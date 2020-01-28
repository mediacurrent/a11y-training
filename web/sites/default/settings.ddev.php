<?php

/**
 * @file
 * Manual config file.
 */

$host = "db";
$port = 3306;

// If DDEV_PHP_VERSION is not set, it means we're running on the host,
// so use the host-side bind port on docker IP.
if (empty(getenv('DDEV_PHP_VERSION'))) {
  $host = "127.0.0.1";
  $port = 32782;
}

$databases['default']['default'] = [
  'database' => "db",
  'username' => "db",
  'password' => "db",
  'host' => $host,
  'driver' => "mysql",
  'port' => $port,
  'prefix' => "",
];

ini_set('session.gc_probability', 1);
ini_set('session.gc_divisor', 100);
ini_set('session.gc_maxlifetime', 200000);
ini_set('session.cookie_lifetime', 2000000);

$settings['hash_salt'] = 'mZCSRSqJURLajomYFqLvBPKkHZNKOVlgkiCLzpIOTtoyUZCoIafhiOLTnsVzMUQg';

$settings['file_scan_ignore_directories'] = [
  'node_modules',
  'bower_components',
];

$settings['skip_permissions_hardening'] = TRUE;
$settings['trusted_host_patterns'] = ['.*'];
$settings['class_loader_auto_detect'] = FALSE;

// This specifies the default configuration sync directory.
$settings['config_sync_directory'] = '../config/sync';
