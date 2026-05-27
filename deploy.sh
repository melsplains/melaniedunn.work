#!/bin/bash
# Usage: ./deploy.sh "what you changed"
# Example: ./deploy.sh "update about page bio"

MESSAGE=${1:-"update site"}

git add -A
git commit -m "$MESSAGE"
git push netlify main

npx wrangler pages deploy . --project-name=melaniedunn --branch=main --commit-dirty=true 2>&1 | tail -5

echo ""
echo "Deployed. Live in ~10 seconds."
echo "https://www.melaniedunn.work"
