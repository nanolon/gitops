# GitOps Workshop - Hello World

Dieses Repository demonstriert GitOps-Prinzipien mit ArgoCD.

## Struktur

```
├── apps/hello-world/          # Anwendungs-Manifeste
│   ├── deployment.yaml
│   ├── service.yaml
│   └── kustomization.yaml
├── argocd/                    # ArgoCD Definitionen
│   └── hello-world-app.yaml
└── environments/              # Umgebungsspezifische Konfigurationen
    ├── dev/
    ├── staging/
    └── prod/
```

## Demo-Szenarien

### 1. Replicas ändern
```bash
# In apps/hello-world/deployment.yaml
replicas: 2 → 3
git commit -am "Scale up to 3 replicas"
git push
```

### 2. Image-Version ändern
```bash
# In apps/hello-world/deployment.yaml
image: nginxdemos/hello:plain-text → nginxdemos/hello:0.3
git commit -am "Update to version 0.3"
git push
```

### 3. Resource-Limits anpassen
```bash
# In apps/hello-world/deployment.yaml limits anpassen
git commit -am "Increase memory limits"
git push
```

## ArgoCD Zugriff

- URL: https://argocd.biederbeck.de
- User: admin
- Password: kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

## Nützliche Befehle

```bash
# App Status prüfen
kubectl get pods -l app=hello-world

# ArgoCD App sync
argocd app sync hello-world

# Logs anzeigen
kubectl logs -l app=hello-world
```
