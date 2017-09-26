<?php

// Vagrant local development vm.
$aliases['mcrain.mcdev'] = [
  'uri' => 'mcrain.mcdev',
  'root' => '/home/vagrant/docroot/web',
  'path-aliases' => [
    '%drush-script' => '/home/vagrant/docroot/bin/drush',
    '%dump-dir' => '/tmp',
  ],
];

if ('vagrant' !== getenv('USER')) {
  $aliases['mcrain.mcdev']['remote-host'] = 'mcrain.mcdev';
  $aliases['mcrain.mcdev']['remote-user'] = 'vagrant';
  $aliases['mcrain.mcdev']['ssh-options'] = '-o PasswordAuthentication=no -i ${HOME}/.vagrant.d/insecure_private_key';
}
