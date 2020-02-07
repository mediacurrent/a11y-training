# Setting up your training environment

We have put together a training environment that will help you with the hands-on part of this course.  The training environment is made of a Drupal website which includes basic functionality and elements for testing accessibility.

## Requirements
This project requires the following tools to be installed:
* [Docker](https://www.docker.com/products/docker-desktop): You can install Docker in your Mac, Windows, or Linux environment.
* [DDev](https://ddev.readthedocs.io/en/stable/#installation):  This will help us automate the process of building a drupal website.

## Build your environment
Building your training environment requires mimimal interaction with a command line tool like terminal on a mac, or power shell on windows.

1. Open your command line tool and change to a directory where you want to setup your environment (i.e. `cd /Sites` or `cd /Documents`, etc.)

2. Clone this repo by typing<br /><br /> `git clone git@github.com:mediacurrent/a11y-training.git`<br /><br />
_This will download all the files from the repository and will create a new folder called_ `a11y-training`.

3. Change into the new directory created by the repo and start DDEV<br /><br />`cd a11y-training`<br /><br />`ddev start`<br /><br />
_This will install your drupal website and enable all required modules.  This process could take a few minutes._

4. Import the custom database<br />
**IMPORTANT**: _We've included a copy of a starter database in this repo to simplify the training process and avoid having to do a site install. You should never commit a database in your own projects_.<br /><br />`ddev import-db --src=mysql/dev-starter-db.sql.gz`<br /><br />
_After the database is imported, it will run a database update, clear the cache, and provide a user login link via Drush_.<br /><br />
* Alternatively, you can log into the site through the Drupal UI, [http://a11y-training.ddev.site/user](http://a11y-training.ddev.site/user). Username - `a11y`, password = `a11y`<br /><br />
* Or, you can also log in via drush: `ddev . drush uli`

## Using Drush

With ddev, you can execute drush commands with `ddev . drush <command>`, where `<command>` is the actual drush command you want to run like status or cache-rebuild. The . (period), is shorthand for exec (such as `ddev exec drush cr`).
