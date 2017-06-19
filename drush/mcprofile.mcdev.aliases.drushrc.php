<?php

// Vagrant local development vm.
$aliases['mcprofile.mcdev'] = [
  'uri' => 'mcprofile.mcdev',
  'root' => '/home/vagrant/docroot/web',
  'path-aliases' => [
    '%drush-script' => '/home/vagrant/docroot/bin/drush',
    '%dump-dir' => '/tmp',
  ],
];

if ('vagrant' !== getenv('USER')) {
  $aliases['mcprofile.mcdev']['remote-host'] = 'mcprofile.mcdev';
  $aliases['mcprofile.mcdev']['remote-user'] = 'vagrant';
  $aliases['mcprofile.mcdev']['ssh-options'] = '-o PasswordAuthentication=no -i ${HOME}/.vagrant.d/insecure_private_key';
}
