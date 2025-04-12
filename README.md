
# 🚀 Java Azure App – CI/CD avec GitHub Actions et Azure

Ce projet a pour objectif de démontrer la mise en place d’un pipeline **CI/CD** complet pour une application Java, en utilisant **GitHub Actions** pour l’intégration continue et **Azure App Service** pour le déploiement continu.

---

## 📌 Objectifs du projet

- Développer une application Java simple avec Maven.
- Automatiser les étapes de **build**, **test**, et **packaging** via GitHub Actions.
- Déployer automatiquement la Web App sur Azure après chaque `push` ou `pull request`.
- Mettre en œuvre les bonnes pratiques DevOps et de gestion de version.
- Explorer l'interopérabilité entre **GitHub** et **Azure App Service**.

---

## ⚙️ Technologies utilisées

- 🧱 Java 21
- 📦 Maven
- 🛠 Git & GitHub
- 🔄 GitHub Actions
- ☁️ Microsoft Azure (App Service, Resource Group, App Plan)
- ✅ YAML pour la définition du pipeline CI/CD

---

## 📁 Structure du projet

```bash
Java-Azure-App/
├── src/
│   └── com/
│       └── App.java
├── pom.xml
└── .github/
    └── workflows/
        └── ci.yml
```

---

## 📌 Étapes de mise en œuvre

### 1. Création du projet Java avec Maven

- Initialisation du projet Java avec `pom.xml`.
- Ajout d’une classe principale `App.java`.
- Configuration pour générer un `.jar` exécutable.

### 2. Hébergement sur GitHub

- Initialisation du dépôt Git.
- Push vers la branche `main`.

### 3. Configuration du pipeline CI/CD

- Création d’un fichier `.github/workflows/ci.yml`.
- Étapes automatisées :
  - Compilation du projet
  - Tests unitaires (facultatif)
  - Packaging
  - Déploiement sur Azure

### 4. Création des ressources Azure

- Groupe de ressources `java-app-rg`
- App Service Plan `java-app-plan` (Linux, B1)
- Web App `java-azure-app` (Java SE 21)
- Liaison entre GitHub et Azure App Service

### 5. Déploiement automatique

- Secrets ajoutés dans GitHub :
  - `AZURE_WEBAPP_PUBLISH_PROFILE`
  - `AZURE_WEBAPP_NAME`
- Exécution automatique du pipeline CI/CD à chaque mise à jour

---

## ❗ Contraintes rencontrées

- Problème de classpath non détecté automatiquement dans `launch.json`.
- Pannes temporaires du portail Azure.
- Adaptation manuelle du fichier `ci.yml` (workflow par défaut non adapté).
- Déploiement parfois non détecté sur Azure malgré l'exécution correcte du pipeline.

### ✔️ Solutions apportées

- Configuration manuelle du classpath (`target/classes`)
- Vérification de l’état d’Azure via [status.azure.com](https://status.azure.com)
- Personnalisation complète du workflow YAML
- Déploiement manuel temporaire pour validation

---

## ✅ Résultat final

Une application Java déployée automatiquement sur Azure App Service après chaque `push`.  
Accessible en ligne via :  
**https://<nom-de-votre-app>.azurewebsites.net**

---

## 📚 Auteurs

- **Soufiane Cherkaoui Rhazoini**  
- **Loubna Sghir**

Encadré par **Pr. Mouhcine Elhassani**  
Filière : *Ingénierie Informatique et Réseaux – 4ème année*

---

## 📅 Année universitaire

**2024 – 2025**

---

## 📥 Capture d'écran recommandée

Ajoutez une capture d'écran du portail Azure ou de la page GitHub Actions ici pour illustrer le déploiement réussi :

```markdown
![Déploiement réussi](chemin/vers/capture.png)
```

---

## 🔗 Liens utiles

- [Documentation GitHub Actions](https://docs.github.com/en/actions)
- [Documentation Azure App Service](https://learn.microsoft.com/en-us/azure/app-service/)
- [Configurer Maven avec Java](https://maven.apache.org/guides/getting-started/)
