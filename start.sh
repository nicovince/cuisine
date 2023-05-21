#!/bin/bash
set -x

if [ $# -ne 2 ]; then
    echo "Usage:"
    echo "$0 <prefixe nom de fichier> <nom de la recette>"
    echo "  Exemple: $0 gateau_chocoloat 'Gateau au Chocolat'"
    exit 1
fi

RECIPE_FILENAME="${1}.md"
RECIPE_NAME="${2}"
cat template.md | sed "s/^# Nom du plat/${RECIPE_NAME}/" > "${RECIPE_FILENAME}"
git add ${RECIPE_FILENAME}
