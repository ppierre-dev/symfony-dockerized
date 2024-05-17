Dockerisation d'un projet symfony
- Serveur php-fpm (Apache)
- Serveur mysql
- Interface PhpMyAdmin
- Mailhog

# Installation

- Etape 1 : 
    ```bash 
    git clone url
    ```
- Etape 2 : 
    ```bash
    docker compose build --no-cache
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
# Auteur
**Prevost Pierre CDA24A**