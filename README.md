# Accessbility Training
A hands-on training by [Mediacurrent](https://mediacurrent.com).

This project was built using [Mediacurrent's Rain install profile](https://www.mediacurrent.com/rain).

## Setup your local environment
Please follow the steps below to setup your local environment to follow along during training.  We will only support this environment during training.

## **REQUIREMENTS** - _Install these tools first_:

* Install [Docker](https://ddev.readthedocs.io/en/stable/users/docker_installation/)

* Install [DDEV](https://ddev.readthedocs.io/en/stable/)

* Install Composer
  - On MacOS ```brew install composer```
  - Otherwise, see instructions here https://getcomposer.org/

## 1. Clone this repository into the directory of your choice:
```git clone git@bitbucket.org:mediacurrent/mis_rain_ddev.git```

## 2. Start the local environment

```cd mis_rain_ddev```

```ddev start```

## 3. Run the build script.
```./scripts/build.sh```

This script automates the following steps:

* Runs composer install
* Installs the project Drupal site

The initial pass of the build script downloads several dependencies. Ensure this runs uninterrupted.

### Logging In
* Run `ddev . drush uli` to login to your local installation.


## Additional Links
* [Project Drupal Theme Guide](https://bitbucket.org/mediacurrent/mis_rain_ddev.git/src/HEAD/web/themes/custom/project_theme/README.md?fileviewer=file-view-default)
* [ddev Documentation](https://ddev.readthedocs.io/en/stable/)
* This repository created from [Composer template for Drupal projects](https://github.com/drupal-composer/drupal-project/blob/8.x/README.md) which has some addition information on usage.
* [Using Composer](https://www.drupal.org/docs/develop/using-composer) with Drupal.
