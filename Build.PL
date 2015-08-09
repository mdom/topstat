use 5.006;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    dist_name          => 'App-topstat',
    dist_version_from  => 'bin/topstat',
    configure_requires => {
        'Module::Build' => 0,
        'Curses'        => 0,
        'Getopt::Long'  => 0,
        'Pod::Usage'    => 0,
    },
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
