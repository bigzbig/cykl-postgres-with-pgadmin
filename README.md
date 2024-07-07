# PostreSQL z PgAdmin 4

This repository is part of an article published in Polish: [POSTGRESQL Z PGADMIN4 W DOCKERZE](https://cycl.pl/posts/postgresql-z-pgadmin4-w-dockerze/).

The example shows how to configure PostgreSQL and PgAdmin in Docker containers for development purposes without needing to install these tools on your computer. Since sensitive data is stored in the `.env` file, manual entry of passwords and authentication data is not required for working with the database and the PgAdmin manager in the localhost.

The PostgreSQL container is additionally equipped with scripts for managing database backups, sourced from the
[Cookiecutter for Django](https://github.com/cookiecutter/cookiecutter-django/tree/master/%7B%7Bcookiecutter.project_slug%7D%7D/compose/production/postgres).

These include:
- a script to create a database backup
- a script to restore a database backup
- a script to display a list of database backups
- a script to delete a database backup

Additionally, a script for logging into psql without entering a password has been added.

Usage:

1. Copy file `.env.template` to `.env` and change sensitive data.
2. Run `docker compose up`
