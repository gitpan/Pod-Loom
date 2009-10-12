
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Pod-Loom',
  NAME      => 'Pod::Loom',
  AUTHOR    => "Christopher\ J\.\ Madsen\ \<perl\@cjmweb\.net\>",
  ABSTRACT  => "Weave\ pseudo\-POD\ into\ real\ POD",
  VERSION   => '0.01',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "PPI" => '0',
    "Pod::Eventual" => '0',
    "String::RewritePrefix" => '0',
    "Exporter" => '0',
    "Moose" => '0.65',
    "Carp" => '0',
  },
  test => {TESTS => 't/*.t'}
);

