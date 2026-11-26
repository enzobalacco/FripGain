# FripGain — prototype V0.1

Ouvrir index.html dans un navigateur. Aucune dépendance, aucun appel IA, aucune dépense. Les données du stock restent dans localStorage. Les photos sont seulement prévisualisées, les PDF ouverts localement. Ne pas utiliser pour des données clients en production.

Fonctions : préparation manuelle d'annonce, calcul de marge, stock local, ventes, ouverture PDF. Pas de prix du marché ni de probabilité inventée. Pas de publication automatique Vinted.

Le schéma SQL database/001_inventory.sql est appliqué dans Supabase avec RLS. Le prototype n'est pas encore relié à Supabase. Prochaines étapes : authentification, synchronisation, analyse IA avec quotas, tests de sécurité et déploiement Railway après accord sur le coût.
