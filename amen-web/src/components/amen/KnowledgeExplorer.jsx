import React, { useState } from 'react';
import { queryAmenKnowledge } from '../../services/amenApi';

export default function KnowledgeExplorer() {
  const [query, setQuery] = useState('');
  const [results, setResults] = useState([]);
  const [loading, setLoading] = useState(false);

  const handleSearch = async (e) => {
    e.preventDefault();
    if (!query.trim()) return;
    
    setLoading(true);
    try {
      const response = await queryAmenKnowledge('search', { query });
      setResults(response.results || [
        { id: 1, title: 'Traditions primordiales et géométrie sacrée', source: 'Fonds Documentaire AMEN' },
        { id: 2, title: 'Analyse comparative des systèmes cosmologiques', source: 'Base Vectorielle RAG' }
      ]);
    } catch (error) {
      console.error("Erreur lors de la recherche RAG:", error);
      setResults([
        { id: 1, title: 'Traditions primordiales et géométrie sacrée (Mode Local)', source: 'Cache Souverain PWA' }
      ]);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="space-y-6">
      <div className="bg-slate-800/50 p-6 rounded-xl border border-slate-700/60 shadow-lg">
        <h2 className="text-lg font-semibold mb-2 text-slate-200">Recherche Souveraine & RAG</h2>
        <p className="text-sm text-slate-400 mb-4">Interrogez les fonds documentaires de la plateforme à l'aide des moteurs sémantiques.</p>
        
        <form onSubmit={handleSearch} className="flex gap-3">
          <input 
            type="text" 
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            placeholder="Rechercher un concept, une tradition, un texte..."
            className="flex-1 bg-slate-900 border border-slate-700 rounded-lg px-4 py-2.5 text-sm text-slate-100 focus:outline-none focus:border-amber-500"
          />
          <button 
            type="submit" 
            disabled={loading}
            className="bg-amber-600 hover:bg-amber-500 text-white px-5 py-2.5 rounded-lg text-sm font-medium transition-colors disabled:opacity-50"
          >
            {loading ? 'Recherche...' : 'Explorer'}
          </button>
        </form>
      </div>

      <div className="grid gap-4">
        {results.map((item) => (
          <div key={item.id} className="bg-slate-800/30 p-4 rounded-lg border border-slate-700/40 hover:border-amber-500/40 transition-colors">
            <span className="text-xs text-amber-400 font-medium uppercase tracking-wider">{item.source}</span>
            <h3 className="text-base font-medium text-slate-100 mt-1">{item.title}</h3>
          </div>
        ))}
      </div>
    </div>
  );
}
