
export type ProvenanceLevel = 'Historically documented'|'Academic interpretation'|'Traditional belief'|'Religious doctrine'|'Initiatic interpretation'|'Philosophical hypothesis'|'Modern esoteric interpretation'|'Scientific evidence'|'Unverified claim'
export interface SourceRef { source:string; author?:string; title:string; date?:string; tradition?:string; language?:string; type?:string; licence?:string; url?:string; reliability:number; consultedAt:string }
export interface KnowledgeArticle { id:string; slug:string; title:string; excerpt:string; content:string; tradition:string; provenance: ProvenanceLevel; sources: SourceRef[] }
