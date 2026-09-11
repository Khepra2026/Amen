
import { Card, CardHeader, CardTitle, CardContent } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import type { ProvenanceLevel } from '@/types/content'
export function KnowledgeCard({title, provenance}:{title:string; provenance:ProvenanceLevel}){
  return <Card><CardHeader><Badge>{provenance}</Badge><CardTitle>{title}</CardTitle></CardHeader><CardContent><p className='text-sm text-muted-foreground'>Source, Auteur, Tradition, Licence, Fiabilité affichés obligatoirement.</p></CardContent></Card>
}
