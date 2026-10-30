
-- AMEN - READDY FULL STACK SCHEMA - e7e53080-7e80-4477-bc69-67581c9c8ee2
-- ZERO SYSTEM OPERATIONS - Compatible Readdy

-- 1. Documents
create table if not exists public.amen_documents (
  document_id text primary key,
  source_path text not null,
  relative_path text,
  filename text,
  extension text,
  size_bytes bigint,
  sha256 text unique,
  modified_at timestamptz,
  title text,
  language text,
  extraction_status text check (extraction_status in ('SUCCESS','DUPLICATE','ERROR','REVIEW')),
  extraction_method text,
  character_count int,
  word_count int,
  page_count int,
  duplicate_of text,
  quality_status text,
  quality_flags text,
  chunk_count int,
  run_id text,
  created_at timestamptz default now()
);
create index if not exists idx_amen_docs_sha on public.amen_documents(sha256);
create index if not exists idx_amen_docs_status on public.amen_documents(extraction_status);

-- 2. Chunks (151426 expected)
create table if not exists public.amen_chunks (
  chunk_id text primary key,
  document_id text references public.amen_documents(document_id) on delete cascade,
  chunk_index int not null,
  text text not null,
  character_count int,
  word_count int,
  source_path text,
  title text,
  language text,
  sha256 text,
  run_id text,
  created_at timestamptz default now()
);
create index if not exists idx_amen_chunks_doc on public.amen_chunks(document_id);
create index if not exists idx_amen_chunks_run on public.amen_chunks(run_id);

-- 3. Embeddings (vector)
create extension if not exists vector; -- may fail on Readdy, handled via UI
create table if not exists public.amen_embeddings (
  embedding_id text primary key,
  chunk_id text references public.amen_chunks(chunk_id) on delete cascade,
  document_id text,
  embedding vector(1536),
  model text default 'text-embedding-3-small',
  created_at timestamptz default now()
);
create index if not exists idx_amen_emb_chunk on public.amen_embeddings(chunk_id);

-- 4. Agents (60 ACTIVE)
create table if not exists public.amen_agents (
  agent_id text primary key,
  name text not null,
  role text,
  status text default 'ACTIVE' check (status in ('ACTIVE','PAUSED','DISABLED')),
  last_run timestamptz,
  config jsonb,
  created_at timestamptz default now()
);

-- 5. RAG runs & LLM calls audit
create table if not exists public.amen_rag_runs (
  run_id text primary key,
  query text,
  top_k int,
  results jsonb,
  latency_ms int,
  created_at timestamptz default now()
);
create table if not exists public.amen_llm_calls (
  call_id text primary key,
  prompt text,
  response text,
  model text,
  tokens int,
  created_at timestamptz default now()
);

-- 6. Export control
create table if not exists public.amen_export_control (
  export_id text primary key,
  run_id text,
  documents int,
  chunks int,
  duplicates int,
  errors int,
  status text,
  created_at timestamptz default now()
);

-- RLS enable (Readdy requires)
alter table public.amen_documents enable row level security;
alter table public.amen_chunks enable row level security;
alter table public.amen_embeddings enable row level security;
alter table public.amen_agents enable row level security;
alter table public.amen_rag_runs enable row level security;
alter table public.amen_llm_calls enable row level security;
alter table public.amen_export_control enable row level security;

-- Policies: allow service_role full access (managed via Readdy UI)
drop policy if exists "service_all" on public.amen_documents;
create policy "service_all" on public.amen_documents for all using (true) with check (true);
drop policy if exists "service_all" on public.amen_chunks;
create policy "service_all" on public.amen_chunks for all using (true) with check (true);
drop policy if exists "service_all" on public.amen_embeddings;
create policy "service_all" on public.amen_embeddings for all using (true) with check (true);
drop policy if exists "service_all" on public.amen_agents;
create policy "service_all" on public.amen_agents for all using (true) with check (true);
drop policy if exists "service_all" on public.amen_rag_runs;
create policy "service_all" on public.amen_rag_runs for all using (true) with check (true);
drop policy if exists "service_all" on public.amen_llm_calls;
create policy "service_all" on public.amen_llm_calls for all using (true) with check (true);
drop policy if exists "service_all" on public.amen_export_control;
create policy "service_all" on public.amen_export_control for all using (true) with check (true);
