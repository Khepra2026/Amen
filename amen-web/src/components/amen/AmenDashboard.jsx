import React, { useState } from 'react';
import KnowledgeExplorer from './KnowledgeExplorer';

export default function AmenDashboard() {
  const [activeTab, setActiveTab] = useState('explorer');

  return (
    <div className="min-h-screen bg-slate-900 text-slate-100 flex flex-col">
      <header className="border-b border-slate-800 bg-slate-950 px-6 py-4 flex justify-between items-center">
        <div>
          <h1 className="text-xl font-bold tracking-wider text-amber-500">AMEN PLATFORM</h1>
          <p className="text-xs text-slate-400">Architecture Mondiale des Enseignements et des Mystères</p>
        </div>
      </header>
      <main className="flex-1 p-6 max-w-7xl mx-auto w-full">
        <KnowledgeExplorer />
      </main>
    </div>
  );
}
