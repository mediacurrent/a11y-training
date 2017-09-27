#
## Mediacurrent Rain Vagrant Template
This vagrant project serves as a template for new Mediacurrent Drupal 8 builds. 
Developers can save time by cloning and modifying this git repo for their projects.
The provided composer.json adds support for "Sub-profiles" and allows projects to be
installed from existing configuration. A key piece of this project is the inclusion
of the [Mediacurrent Rain base install profile](https://bitbucket.org/mediacurrent/mis_rain/).
This profile includes many of the most common packages pre-configured for rapid site development. Alternatively this project
could be exchanged for Acquia Lightning or another distribution or removed entirely.
The advantage is that the inclusion of a base install profile reduces effort in regards
to package management and configuration while also giving flexibility to still own the
final configuration.  

## Setting up a local [Vagrant](http://vagrantup.com) environment

### Clone this repository into the directory of your choice:
- `$ git clone git@bitbucket.org:mediacurrent/mis_rain_vagrant.git`

### Rename/update all instances of 'mcrain' project name.
- Update config/config.yml where 'mcrain' project name is found
- Rename mcrain.mcdev.aliases.drushrc.php, update references to mcrain
- Rename web/sites/mcrain.mcdev
- Update web/sites/mcrain.mcdev/settings.php to change mcrain_mcdev
- Update this README.md to remove above instructions and rename 'mcrain'

### Rename & configure sample 'mis_profile' install profile
- Change this to the name of your project name
- Find and replace all instances of 'mis_profile' with your project name
- Enable desired base profile features and modules in the profile .info.yml file.

### Edit your local `/etc/hosts` file to include the new box IP
    192.168.50.110 mcrain.mcdev

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
* Use the project's [drush alias file](drush/mcrain.mcdev.aliases.drushrc.php)
* Optionally copy into your user's drush directory at ~/.drush/ for global use or customization.

## Logging In
* Use `drush @mcrain.mcdev uli` to login to your local installation.

## Adding the sync folder to be used with new installs 
* The first time build.sh runs successfully you will be able to export configuration back to
your project's sync folder.
* Add an empty folder named 'sync' at profile/profilename/config/sync.
* Uncomment and modify the 'sync' configuration setting in your settings.php to point
to your new install profile folder's sync folder.
* Run `drush @mcrain.mcdev cex` to export configuration to sync.
* Re-run `$ ./scripts/build.sh` to test install with sync configuration.
* Once this is working as expected, add the sync folder to git and commit.

## Development Settings
* The ./web/sites/mcrain.mcdev/settings.local.php contains settings for customizing the development environment.  This disables Drupal's built in caching and additionally activates sites/development.services.yml for further customizing the development environment.

# Development Workflow

* [Use Composer](https://bitbucket.org/mediacurrent/drupal-project/src/HEAD/README.md) to add 3rd party dependencies and patches.
* Write custom modules, themes etc. to the ./web/ directory.
* Run `drush @mcrain.mcdev cex` to export Drupal configuration to the profile/profilename/config/sync folder.
* Run `$ ./scripts/build.sh` before starting a new ticket. Run build.sh again to test work completed prior to submitting a pull request.

## Demo Content
* TBD

## Additional Links
* [Project Drupal Theme Guide](https://bitbucket.org/mediacurrent/mis_rain_vagrant.git/src/HEAD/web/themes/custom/project_theme/README.md?fileviewer=file-view-default)
* [Using Vagrant](https://bitbucket.org/mediacurrent/mis_vagrant/src/HEAD/README.md)
