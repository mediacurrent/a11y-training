#!/bin/bash
usage()
{
cat << EOF
Usage: ./phpunit.sh <phpunit parameters>

ARGUMENTS:
   $PHPUNIT_PARAMS: PHPUnit paramaters.
   -h : PHPUnit help.
EOF
}

PHPUNIT_PARAMS="${@}"

# Exit if options aren't set.
if [[ -z $PHPUNIT_PARAMS ]]; then
  usage
  exit 1;
fi

# Set the PHPUnit config file
if [ -f ./bin/phpunit ]; then
  PHPUNIT='./bin/phpunit -c ./tests/phpunit/phpunit.xml'
else [ -f ../bin/phpunit ];
  PHPUNIT='../bin/phpunit -c ../tests/phpunit/phpunit.xml'
fi

# Run PHPUnit tests.
${PHPUNIT} ${PHPUNIT_PARAMS}
