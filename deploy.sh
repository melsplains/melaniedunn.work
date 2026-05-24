#!/bin/bash
# Usage: ./deploy.sh "what you changed"
# Example: ./deploy.sh "update about page bio"

MESSAGE=${1:-"update site"}

git add -A
git commit -m "$MESSAGE"
git push origin main

echo ""
echo "Pushed. Netlify is deploying — live in ~30 seconds."
echo "https://www.melaniedunn.work"
