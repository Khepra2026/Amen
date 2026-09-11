export const CHAT_URL = "https://4vkv1euabs70myibcbao.helloreaddy.com/functions/v1/chat-amen"
export const CORPUS_URL = "https://amen-coral.vercel.app/api/v1/corpus/count"
export const CORAL_CHAT = "https://amen-coral.vercel.app/api/v1/chat"
export const I18N_URL = "https://amen-coral.vercel.app/api/v1/i18n"

export async function askAmen(message: string) {
  try {
    const res = await fetch(CHAT_URL, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ message, lang: 'la' })
    })
    if (!res.ok) throw new Error('chat-amen failed')
    const data = await res.json()
    return data
  } catch {
    // Fallback vers ton backend Vercel si Readdy tombe
    const res2 = await fetch(CORAL_CHAT, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ message })
    })
    return await res2.json()
  }
}

export async function getLatinTranslations() {
  const res = await fetch(`${I18N_URL}/la`)
  return await res.json() // {explorer: "Explorator AMEN", ...}
}