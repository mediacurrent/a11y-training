#
## Setting up a local [Vagrant](http://vagrantup.com) environment

### Clone this repository into the directory of your choice:
- `$ git clone git@bitbucket.org:mediacurrent/mis_profile_vagrant.git`

### Edit your local `/etc/hosts` file to include the new box IP
    192.168.50.110 mcprofile.mcdev

### Install composer on host machine
- On MacOS ```brew install composer```
- Otherwise, see instructions here https://getcomposer.org/

### Run the build script.
- `$ ./scripts/build.sh`

This script automates the following steps:

* Runs composer install
* Ensures vagrant is available
* Starts vagrant if required
* Installs the project Drupal site

The initial pass of the build script downloads several dependencies and an intermittent internet connection will affect the initial build process.

### Troubleshooting
* Ensure Vagrant has provisioned without errors. Correct errors before proceeding. After vagrant provision is successful it maybe be helpful to vagrant halt && vagrant up`

## Drush Alias
* Use the project's [drush alias file](drush/mcprofile.mcdev.aliases.drushrc.php)
* Optionally copy into your user's drush directory at ~/.drush/ for global use or customization.

## Logging In
* Use `drush @mcprofile.mcdev uli` to login to your local installation.

## Development Settings
* The ./web/sites/mcprofile.mcdev/settings.local.php contains settings for customizing the development environment.  This disables Drupal's built in caching and additionally activates sites/development.services.yml for further customizing the development environment.

# Development Workflow

* [Use Composer](https://bitbucket.org/mediacurrent/drupal-project/src/HEAD/README.md) to add 3rd party dependencies and patches.
* Write custom modules, themes etc. to the ./web/ directory.
* Run `drush @mcprofile.mcdev cex` to export Drupal configuration to the profile/profilename/config/sync folder.
* Run `$ ./scripts/build.sh` before starting a new ticket. Run build.sh again to test work completed prior to submitting a pull request.

## Demo Content
* TBD

## Additional Links
* [Project Drupal Theme Guide](https://bitbucket.org/mediacurrent/mis_profile_vagrant.git/src/HEAD/web/themes/custom/project_theme/README.md?fileviewer=file-view-default)
* [Using Vagrant](https://bitbucket.org/mediacurrent/mis_vagrant/src/HEAD/README.md)
