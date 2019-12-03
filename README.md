# Requirements

This project assumes that you have the following installed:

- [Docker Desktop](https://www.docker.com/products/docker-desktop) if using Mac or Windows, or Docker installed via your package manager on Linux.
- [DDEV](https://ddev.readthedocs.io/en/stable/#installation), along with any requirements listed there (such as Docker).

# Install

First, clone this repository:

```bash
git clone https://github.com/mediacurrent/a11y-training.git
```

Second, open the location where you cloned/downloaded the project in your terminal/prompt and start DDEV.

```bash
cd a11y-training
ddev start
```

Third, import the included database.

> IMPORTANT NOTE! We've included a copy of a starter database in this repo to simplify the training process and avoid having to do a site install. You should **never commit a database** in your own projects.

```bash
ddev import-db --src=mysql/dev-starter-db.sql.gz
ddev . drush cr
```

Finally, log into the site. The credentials for the admin account in the included database are `a11y` for both the username and password. Alternatively, you can log in via drush:

```bash
ddev . drush uli
```

# Using drush

With ddev, you can execute drush commands with `ddev . drush <command>`, where `<command>` is the actual drush command you want to run like `status` or `cache-rebuild`. The `.` is shorthand for `exec` (such as `ddev exec drush cr`).