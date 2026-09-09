import { Routes, Route } from 'react-router-dom'
import Chat from './pages/Chat'
import Library from './pages/Library'
import MapSanctuaries from './pages/MapSanctuaries'
export default function App(){
  return (
    <div className="min-h-screen bg-zinc-950 text-zinc-100">
      <header className="p-4 border-b border-zinc-800 flex justify-between">
        <h1 className="text-2xl font-bold tracking-widest">AMEN</h1>
        <span className="text-xs px-2 py-1 bg-amber-500/20 text-amber-400 rounded">LOCAL-FIRST • SOUVERAIN</span>
      </header>
      <Routes>
        <Route path="/" element={<Chat/>} />
        <Route path="/chat" element={<Chat/>} />
        <Route path="/library" element={<Library/>} />
        <Route path="/map" element={<MapSanctuaries/>} />
      </Routes>
    </div>
  )
}
