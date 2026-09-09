import { jsx as _jsx, jsxs as _jsxs } from "react/jsx-runtime";
import { Routes, Route } from 'react-router-dom';
import Chat from './pages/Chat';
import Library from './pages/Library';
import MapSanctuaries from './pages/MapSanctuaries';
export default function App() {
    return (_jsxs("div", { className: "min-h-screen bg-zinc-950 text-zinc-100", children: [_jsxs("header", { className: "p-4 border-b border-zinc-800 flex justify-between", children: [_jsx("h1", { className: "text-2xl font-bold tracking-widest", children: "AMEN" }), _jsx("span", { className: "text-xs px-2 py-1 bg-amber-500/20 text-amber-400 rounded", children: "LOCAL-FIRST \u2022 SOUVERAIN" })] }), _jsxs(Routes, { children: [_jsx(Route, { path: "/", element: _jsx(Chat, {}) }), _jsx(Route, { path: "/chat", element: _jsx(Chat, {}) }), _jsx(Route, { path: "/library", element: _jsx(Library, {}) }), _jsx(Route, { path: "/map", element: _jsx(MapSanctuaries, {}) })] })] }));
}
//# sourceMappingURL=App.js.map