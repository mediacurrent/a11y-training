#!/bin/bash -e
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

# Set the phpcs standards config.
# phpcs --config-set installed_paths ${HOME}/.composer/vendor/drupal/coder/coder_sniffer

if [ -f ./bin/phpcs ]; then
  PHPCS='./bin/phpcs --standard=./vendor/drupal/coder/coder_sniffer/Drupal'
elif [ -f ../bin/phpcs ]; then
  PHPCS='../bin/phpcs --standard=../vendor/drupal/coder/coder_sniffer/Drupal'
else
  PHPCS='phpcs --standard=Drupal'
fi

if [ -d ${SITE_PATH}/modules/custom ]; then
  echo "Running coding standards tests for custom modules."
  ${PHPCS} --extensions=php,module,inc,install,test,profile,theme ${SITE_PATH}/modules/custom
  echo "Running PHP lint for custom modules."
  find ${SITE_PATH}/modules/custom \( -name "*.module" -o -name "*.install" -o -name "*.php" \) -print0 | xargs -0 -n1 -P8 php -l 1>/dev/null
fi

if [ -d ${SITE_PATH}/profiles/custom ]; then
  echo "Running coding standards tests for custom profiles."
  ${PHPCS} --extensions=php,module,inc,install,test,profile,theme ${SITE_PATH}/profiles/custom
  echo "Running PHP lint for custom profiles."
  find ${SITE_PATH}/profiles/custom \( -name "*.module" -o -name "*.install" -o -name "*.profile" -o -name "*.php" \) -print0 | xargs -0 -n1 -P8 php -l 1>/dev/null
fi

if [ -d ${SITE_PATH}/themes/custom ]; then
  echo "Running coding standards tests for custom themes."
  ${PHPCS} --extensions=php,module,inc,install,test,profile,theme ${SITE_PATH}/themes/custom
  echo "Running PHP lint for custom themes."
  find ${SITE_PATH}/themes/custom \( -name "*.theme" \) -print0 | xargs -0 -n1 -P8 php -l 1>/dev/null
fi
