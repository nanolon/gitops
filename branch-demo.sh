#!/bin/bash

echo "🎯 GitOps Branch Demo Script"
echo "============================="
echo ""

echo "Verfügbare Demos:"
echo "1. Branch wechseln in ArgoCD (main ↔ feature/landing-page)"
echo "2. Merge feature → main"
echo "3. Rollback Demo"
echo ""

echo "URLs für Demo:"
echo "- ArgoCD: https://argocd.biederbeck.de"
echo "- Hello World: https://hello.biederbeck.de"
echo "- Landing Page: https://gitops.biederbeck.de"
echo ""

echo "Branch Switch Demo:"
echo "1. Gehe zu ArgoCD Web UI"
echo "2. Wähle 'hello-world' Application"
echo "3. Klicke 'APP DETAILS' → 'PARAMETERS'"
echo "4. Ändere 'targetRevision' von 'main' zu 'feature/landing-page'"
echo "5. Sync und beobachte die Änderung"
echo ""

echo "Merge Demo:"
echo "git checkout main"
echo "git merge feature/landing-page"
echo "git push"
echo "# Beobachte automatischen Sync in ArgoCD"
