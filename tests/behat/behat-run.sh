#!/bin/bash
usage()
{
cat << EOF
Usage: behat-run.sh uri.dev

ARGUMENTS:
   $URI: URI of site to run behat against.
EOF
}

URI=$1

# Exit if options aren't set.
if [[ -z $URI ]]; then
  usage
  exit 1;
fi

phantomjs=$(which phantomjs)

if [ ! -z ${phantomjs} ] && !(pgrep -f "${phantomjs} --webdriver=8643" > /dev/null); then
  forever start ${phantomjs} --webdriver=8643
fi

cd `dirname $0`

# Run behat.
if [ -f bin/behat ]; then
  export BEHAT_PARAMS='{"extensions" : {"Behat\\MinkExtension" : {"base_url" : "'$URI'"}}}'
  bin/behat ${@:2}
elif [ -f ../../bin/behat ]; then
  export BEHAT_PARAMS='{"extensions" : {"Behat\\MinkExtension" : {"base_url" : "'$URI'"}}}'
  ../../bin/behat ${@:2}
else
  export BEHAT_PARAMS='{"extensions" : {"Behat\\MinkExtension" : {"base_url" : "'$URI"}}}'
  behat ${@:2}
fi
