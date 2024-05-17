Dockerisation d'un projet symfony
- Serveur php-apache
- Serveur mysql
- Interface PhpMyAdmin
- Mailhog

(Nous sommes obligés de réaliser une commande pour les permissions directement dans le container car je n'ai pas réussi à correctement paramétré mes users, j'aurai aimé avoir une solution plus propre)

# Installation

- Etape 1 : 
    ```bash 
    git clone git@github.com:ppierre-dev/symfony-dockerized.git
    ```
- Etape 2 : 
    ```bash
    cd symfony-dockerized && docker compose build --no-cache
    ```
- Etape 3 :
    ```bash
    docker compose up -d
    ```
- Etape 4 :
    ```bash
    docker exec -it php bash
    ```
- Etape 5 :
    ```bash
    chown -R www-data:www-data ./* && chmod -R 755 ./*
    ```
  
- Application : [http://localhost:8080/](http://localhost:8080/)
- PhpMyAdmin : [http://localhost:8081/](http://localhost:8081/) (Username : symfony ; Password : symfony)
- Mailhog  : [http://localhost:8025/](http://localhost:8025/)

# Auteur
**Prevost Pierre CDA24A**
