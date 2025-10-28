# Projet-Terraform-Ansible
Projet terraform Ansible

CONTEXTE

Vous devez automatiser le déploiement d’une application web simple avec une base de données, en utilisant :
 Terraform pour créer l’infrastructure (conteneurs Docker)
 Ansible pour configurer les conteneurs et déployer la page web
Vous travaillez par équipe de 2 étudiants.

OBJECTIFS

 Créer et configurer 2 conteneurs Docker avec Terraform :
o Serveur web (nginx ou apache
o Base de données (MySQL ou PostgreSQL)
 Déployer une page web simple depuis un template Ansible
 Utiliser des variables et des conditions dans Ansible
 Générer un inventaire Ansible automatiquement depuis Terraform

CONTRAINTES

 Terraform doit gérer l’infrastructure (conteneurs, images, ports, variables).
 Ansible doit configurer le serveur web, déployer la page, et utiliser les bonnes pratiques vues en cours.
 Les conteneurs doivent pouvoir être détruits et recréés proprement.
Quelques informations utiles à appliquer :
 Définissez les bonnes variables
 Créer des outputs utiles (IP, …) qui serviront à alimenter Ansible
 Utilisez des template si nécessaires
 Notifier en cas de changement des les fichiers

BONUS

 Ajouter un rôle Ansible pour gérer la configuration du serveur web
 Créer un playbook multi-hôtes
