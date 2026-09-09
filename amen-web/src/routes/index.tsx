
import { createBrowserRouter } from 'react-router-dom'
import { AppShell } from '@/components/layout/AppShell'
import HomePage from '@/pages/HomePage'
import KnowledgePage from '@/pages/KnowledgePage'
import LibraryPage from '@/pages/LibraryPage'
import ChatPage from '@/pages/ChatPage'
import BuilderPage from '@/pages/BuilderPage'
import NotFoundPage from '@/pages/NotFoundPage'

export const ROUTES = [
  { path:'/', name:'home', component:'HomePage', auth:false },
  { path:'/knowledge', name:'knowledge', component:'KnowledgePage', auth:false },
  { path:'/library', name:'library', component:'LibraryPage', auth:false },
  { path:'/chat', name:'chat', component:'ChatPage', auth:false },
  { path:'/builder', name:'builder', component:'BuilderPage', auth:true },
  { path:'/about', name:'about', component:'HomePage', auth:false },
  { path:'/sanctuaries', name:'sanctuaries', component:'LibraryPage', auth:false },
]

export const router = createBrowserRouter([
  { path:'/', element:<AppShell/>, children:[
    { index:true, element:<HomePage/> },
    { path:'knowledge', element:<KnowledgePage/> },
    { path:'library', element:<LibraryPage/> },
    { path:'chat', element:<ChatPage/> },
    { path:'builder', element:<BuilderPage/> },
    { path:'about', element:<HomePage/> },
    { path:'sanctuaries', element:<LibraryPage/> },
    { path:'*', element:<NotFoundPage/> },
  ]}
])
