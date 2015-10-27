use strict;
use warnings;
package Skeletor::Template::Example;

=head1 NAME

Skeletor::Template::Example - An example template skel for Skeletor

=head1 SYNOPSIS

    skeletor --template Example \
      --as Local::MyApp \
      --directory ~/new_projects \
      --author 'John Napiorkowski <jjnapiork@cpan.org>' \
      --year 2015

=head1 DESCRIPTION

This is an example L<Skeletor> template project skel for use to learn how to
use the tool and to build custom skeleton projects of your own.

=head1 CONFIGURATION

The following configuration options are available.

=head2 template_open_tag

Defines the start of a template expansion tag.  Default is '[%'.  Might be
useful if the skel you are defining wants to preprocess templates that are
atually using the default '[%'.

=head2 template_close_tag

Defines the start of a template expansion tag.  Default is '%]'.  Might be
useful if the skel you are defining wants to preprocess templates that are
atually using the default '%]'.

=head2 template

One or more templates to use to create a project.

=head1 PROJECT VARS

This Project builder uses the following variables for template and/or file
path expansion

=head2 as

The project Perl namespace, as you might use it in a 'package' declaration.
For example "Local::MyApp".

=head2 name

Derived from L</namespace>.  We substitute '::' for '-' to create a project
'name' that is normalized to the CPAN specification.  For example 'Local-MyApp'

=head2 name_lowercase

=head2 name_lc

Same as L</name> but using lowercased characters via 'lc'.  For example 'local-myapp'.

=head2 name_lowercase_underscore

=head2 name_lc_underscore

Same as L<name> but using lowercase characters via 'lc' and substituting all
'-' characters with '_'.

=head2 project_fullpath

Given a L</as> like "Local::My::App":

When used as an expansion for a directory expands to a nest of
directories such as "Local/My/App".  Directories will be created as needed.

When used as an expansion for a filename, expands directories as needed and
creates a terminal file as needed such as "Local/My/App". Extensions are
preserved, for example "${namespace_fullpath}.pm" becomes "Local/My/App.pm".

When used as a variable in a template, resolves to a L<Path::Tiny> object that
points to the directory+filename as already described.

=head2 author

Used in templates, set to the project author.

=head2 year

Year information for setting project copyright, etc.  Default is current year.

=head1 BUILD CYCLE HOOKS

This project builder defines the following build hooks for customizing the
build process.

Example, build a readme file
Example, preinstall a local direcotry

=head2 TBA

=head1 AUTHOR
 
John Napiorkowski L<email:jjnapiork@cpan.org>
  
=head1 COPYRIGHT & LICENSE
 
Copyright 2015, John Napiorkowski L<email:jjnapiork@cpan.org>
 
This library is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

=cut

1;
