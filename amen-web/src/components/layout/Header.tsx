
import { Link, NavLink } from 'react-router-dom'
import { Button } from '@/components/ui/button'
import { Search, Menu, Sun, Moon } from 'lucide-react'
export function Header(){
  return (
    <header className="sticky top-0 z-50 w-full border-b bg-background/95 backdrop-blur">
      <div className="container mx-auto flex h-16 items-center justify-between px-4">
        <Link to="/" className="font-serif text-xl font-bold">AMEN</Link>
        <nav className="hidden md:flex gap-6 text-sm">
          <NavLink to="/knowledge" className="hover:text-primary">Knowledge</NavLink>
          <NavLink to="/library" className="hover:text-primary">Library</NavLink>
          <NavLink to="/sanctuaries" className="hover:text-primary">Sanctuaries</NavLink>
          <NavLink to="/chat" className="hover:text-primary">Chat</NavLink>
          <NavLink to="/builder" className="hover:text-primary">Builder</NavLink>
        </nav>
        <div className="flex items-center gap-2">
          <Button variant="ghost" size="icon" aria-label="Search"><Search className="h-4 w-4"/></Button>
          <Button variant="ghost" size="icon" className="md:hidden" aria-label="Menu"><Menu className="h-4 w-4"/></Button>
        </div>
      </div>
    </header>
  )
}
