
use strict;
use warnings;

 BEGIN { require 5.8.0; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Pod::Loom',
                       'DISTNAME' => 'Pod-Loom',
                       'AUTHOR' => 'Christopher J. Madsen <perl@cjmweb.net>',
                       'ABSTRACT' => 'Weave pseudo-POD into real POD',
                       'EXE_FILES' => [],
                       'VERSION' => '0.03',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'PPI' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Pod::Eventual' => '0',
                                        'String::RewritePrefix' => '0',
                                        'Exporter' => '0',
                                        'Moose' => '0.65',
                                        'Carp' => '0'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



