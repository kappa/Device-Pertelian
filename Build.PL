use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Device::Pertelian',
    license             => 'GPL3',
    dist_author         => 'Alex Kapranoff <alex@kapranoff.ru>',
    dist_version_from   => 'lib/Device/Pertelian.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Device-Pertelian-*' ],
    create_makefile_pl => 'traditional',
    meta_merge => {
        resources => {
            repository => 'http://github.com/kappa/Device-Pertelian',
        },
    },
);

$builder->create_build_script();
