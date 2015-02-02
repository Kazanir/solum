# Solum: A Drupal development profile
======
This README will document how to set up this repository for local building.

* This repository only stores custom code. Modules or libraries drawn from external sources are referenced in the `project.make` file.
* To build this repository locally, you'll need the Platform CLI client, which can be found here: https://github.com/platformsh/platformsh-cli

Since we aren't actually storing this application on Platform, here are the steps to setting up your local copy of the repo.

* Clone this repository to a project directory, usually in `/var/www/` somewhere.
* Once inside your folder, run the following commands:
  * `./scripts/init.sh`
  * `cd .`
  * `platform build`
* This will set up your local structure and proceed to use Drush to build the project. Any time you need grab new additions from the repository, you should re-run this process.
* Point your local webserver's virtual host at the newly-created `www/` folder symlink. This link will be valid no matter how many times you need to rebuild.
* Edit your `shared/settings.local.php` file to have a Drupal database configuration that points at your local MySQL/MariaDB installation.
