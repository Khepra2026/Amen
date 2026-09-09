from enum import Enum
class ReliabilityLevel(str, Enum):
    S0 = "S0 - Source primaire authentifiée"
    S1 = "S1 - Source historique/archéo fortement documentée"
    S2 = "S2 - Recherche académique"
    S3 = "S3 - Tradition transmise"
    S4 = "S4 - Interprétation doctrinale"
    S5 = "S5 - Hypothèse ésotérique"
    S6 = "S6 - Affirmation non vérifiable"

RELIABILITY_RULES = {
    "must_not_present_as_fact": ["S3","S4","S5","S6"],
    "requires_citation": ["S0","S1","S2","S3"],
}
