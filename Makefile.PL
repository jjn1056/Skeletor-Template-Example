use strict;
use warnings;
 
use 5.008001;
 
use ExtUtils::MakeMaker;
 
my %WriteMakefileArgs = (
  "ABSTRACT" => "Example Project Template for Skeletor",
  "AUTHOR" => "John Napiorkowski",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "Skeletor-Template-Example",
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.008001",
  "NAME" => "Skeletor::Template::Example",
  "PREREQ_PM" => {
  },
  "TEST_REQUIRES" => {
    "Test::Most" => 0
  },
  "VERSION" => "0.001",
  "test" => {
    "TESTS" => "t/*.t"
  }
);
 
my %FallbackPrereqs = (
  "ExtUtils::MakeMaker" => 0,
  "Test::More" => 0
);
 
unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}
 
delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };
 
WriteMakefile(%WriteMakefileArgs);


