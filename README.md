# 🚀 Mon Premier Projet DevOps (Environnement Cisco DEVASC)

![CI Site Web Docker](https://github.com)

Ce dépôt rassemble mes premiers travaux pratiques autour des outils **DevOps** et de l'automatisation sur la machine virtuelle **Cisco DEVASC**.

## 🛠️ Technologies utilisées
* **Contrôle de version :** Git & GitHub
* **Développement & API :** Python 3 (`requests`)
* **Conteneurisation :** Docker & Nginx (`nginx:alpine`)
* **Intégration Continue (CI/CD) :** GitHub Actions

## 📂 Structure du projet
* `github_api.py` : Script Python interrogeant l'API REST publique de GitHub pour afficher les statistiques d'un profil utilisateur.
* `index.html` : Mini page web statique servie par le conteneur Docker.
* `Dockerfile` : Instructions de construction de l'image Docker basée sur Nginx.
* `.github/workflows/ci.yml` : Pipeline automatisé qui construit l'image Docker et teste la réponse HTTP de la page web à chaque `git push`.

## 💻 Utilisation locale

### 1. Exécuter le script Python (API GitHub)
```bash
pip3 install requests
python3 github_api.py
```

### 2. Lancer le site web avec Docker
```bash
# Construire l'image Docker
docker build -t mon-site-devops .

# Démarrer le conteneur sur le port 8080
docker run -d -p 8080:80 --name web-test mon-site-devops
```
Ouvre ensuite ton navigateur à l'adresse `http://localhost:8080` pour visualiser la page.

---
*Réalisé par [FAWA19-isi](https://github.com)*
