import { jsx as _jsx, jsxs as _jsxs } from "react/jsx-runtime";
import { useState } from 'react';
export default function Chat() {
    const [q, setQ] = useState('');
    const [ans, setAns] = useState(null);
    const [loading, setLoading] = useState(false);
    const ask = async () => {
        if (!q)
            return;
        setLoading(true);
        try {
            const r = await fetch('http://localhost:8000/api/chat', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ message: q }) });
            const j = await r.json();
            setAns(j);
        }
        catch (e) {
            setAns({ answer: "Backend offline - lance uvicorn dans backend/.venv", agent: "offline" });
        }
        setLoading(false);
    };
    return (_jsxs("div", { className: "max-w-3xl mx-auto p-6", children: [_jsx("h2", { className: "text-xl mb-4 font-semibold", children: "Recherche AMEN" }), _jsxs("div", { className: "flex gap-2", children: [_jsx("input", { value: q, onChange: e => setQ(e.target.value), onKeyDown: e => e.key === 'Enter' && ask(), placeholder: "Comparer lumi\u00E8re herm\u00E9tisme / Vedanta", className: "flex-1 bg-zinc-900 border border-zinc-800 rounded px-4 py-3" }), _jsx("button", { onClick: ask, className: "bg-white text-black px-6 rounded", children: loading ? '...' : 'Interroger' })] }), ans && _jsx("div", { className: "mt-8 p-6 bg-zinc-900 border border-zinc-800 rounded whitespace-pre-wrap", children: ans.answer })] }));
}
//# sourceMappingURL=Chat.js.map