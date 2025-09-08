# GitOps Workshop - Landing Page Branch

Dies ist der `feature/landing-page` Branch mit einer attraktiven Demo-Anwendung.

## Was ist anders?

- Professionelle HTML/CSS Landing Page
- Nginx mit ConfigMaps für Content
- Gleiche GitOps-Prinzipien, anderer Inhalt
- Demonstriert Branch-basierte Workflows

## Demo-Szenarien

### 1. Branch-Switching in ArgoCD
- Zeige beide Applications: `hello-world` und `landing-page`
- Wechsle Target Branch in ArgoCD Web UI
- Beobachte Live-Deployment-Änderungen

### 2. Feature → Main Merge
```bash
git checkout main
git merge feature/landing-page
git push
```

### 3. Multi-App Environment
- Zwei Apps parallel: hello.biederbeck.de + gitops.biederbeck.de
- Verschiedene Branches
- Verschiedene Sync-Policies

## URLs
- Landing Page: https://gitops.biederbeck.de
- ArgoCD: https://argocd.biederbeck.de

## Nächste Schritte
1. Branch pushen
2. ArgoCD Application erstellen (landing-page-app.yaml)
3. Demo durchführen
