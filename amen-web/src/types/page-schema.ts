
export type PageSectionType = 'hero'|'text'|'image'|'cards'|'cta'|'form'|'custom'
export interface PageSection { id:string; type:PageSectionType; props:Record<string,unknown>; children?:PageSection[]; visibility?: { desktop?:boolean; tablet?:boolean; mobile?:boolean } }
export interface PageMetadata { title:string; description:string; slug:string; canonical?:string; robots?:string; openGraph?: Record<string,string>; }
export interface PageSchema { id:string; version:number; metadata:PageMetadata; theme?:string; sections: PageSection[]; createdAt:string; updatedAt:string }
