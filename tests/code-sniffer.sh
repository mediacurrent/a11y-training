#!/bin/bash
usage()
{
cat << EOF
Usage: ./code-sniffer.sh /path/to/docroot

ARGUMENTS:
   $SITE_PATH: Absolute path to Drupal docroot.
EOF
}

SITE_PATH=$1

# Exit if options aren't set.
if [[ -z $SITE_PATH ]]; then
  usage
  exit 1;
fi

if [ ! -d ${SITE_PATH}/modules/custom ]; then
  echo "No coder-sniffer tests run. custom modules directory not found."; exit 0;
fi

# Set the phpcs standards config.
# phpcs --config-set installed_paths ${HOME}/.composer/vendor/drupal/coder/coder_sniffer

if [ -f ./bin/phpcs ]; then
  PHPCS='./bin/phpcs --standard=./vendor/drupal/coder/coder_sniffer/Drupal'
elif [ -f ../bin/phpcs ]; then
  PHPCS='../bin/phpcs --standard=../vendor/drupal/coder/coder_sniffer/Drupal'
else
  PHPCS='phpcs --standard=Drupal'
fi

# Run php code sniffer.
${PHPCS} --extensions=php,module,inc,install,test,profile,theme ${SITE_PATH}/modules/custom
# Run PHP Lint.
# find ${SITE_PATH}/sites/all/modules/custom -name '.module' -or -name '.inc'  -or -name "*.php" -print0 | xargs -0 -n1 -P8 php -l 1>/dev/null
