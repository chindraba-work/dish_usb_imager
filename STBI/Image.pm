package STBI::Image;
# SPDX-License-Identifier: MIT

use 5.030000;
use strict;
use warnings;
use Time::HiRes;
use Digest::MD5;

require Exporter;

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
	setSourceServer
	getSourceServer
	verifyImage
	verifyArchive
	showManifest
	makeImageMount
	verifyTimestamp
	checkRemoteAccess
	giveRemoteVersion
	giveRemoteTimestamp
	retrieveRemote
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
);

our $VERSION = '0.0.1';

# Things to do with images
#   Verify integrity of existing image file
#   Verify integrity of existing zip archive
#   Report contents of manifest file in the image
#   Create mountable partition image from image file
#   Check timestamp
#   Verify server access https://dns.dish.com
#       Should be stored in a config file somewhere
#   Retrieve remote version's number 
#       File name should look like STBImage_V11.zip, meaning version 11
#   Retrieve remote version's timestamp
#   Download zip file as original filename
#       File name something like STBImage_V17.zip
#       Generate and store the integity digest for the new zip file
#       Hardlink copy to filename stored in config file
#           current choice is: STBImage.zip
#       Don't forget to touch the file if needed.
#       Locate the name of the image file in the zip file
#           Something like Qvick_Soak3_px1205.img
#       Decompress downloaded file
#       Generate and store the new integrity digest for the image file

sub setSourceServer {
    say "Setting the URL for image downloads.";
}

sub getSourceServer {
    say "Retrieving current version number from server.";
}

sub verifyImage {
    say "Performing integrity check on the update image."
}

sub verifyArchive {
    say "Performing integrity check on the archived image."
}

sub showManifest {
    say "Retrieving current manifest.";
}

sub makeImageMount {
    say "Creating a mountable file from update image.";
}

sub verifyTimestamp {
    say "Comparing local image timestamp with remote image.";
}

sub checkRemoteAccess {
    say "Verifying access to remote server.";
}

sub giveRemoteVersion {
    say "Finding and reporting the version number of remote image.";
}

sub giveRemoteTimestamp {
    say "Finding and reporting the timestamp of remote image.";
}

sub retrieveRemote {
    say "Retrieving remote image archive.";
}

sub getRemoteImage {
    say "Downloading remote image archive";
}

1;
__END__

=head1 NAME

STBI::Image - Perl module for handling STB image updates
Updater

=head1 SYNOPSIS

  use STBI::Image qw( :all );

  setSourceServer;
  getSourceServer;
  verifyImage;
  verifyArchive;
  showManifest;
  makeImageMount;
  verifyTimestamp;
  checkRemoteAccess;
  giveRemoteVersion;
  giveRemoteTimestamp;
  retrieveRemote;

=head1 DESCRIPTION

Retrieve, process, and check STB image updates

=head2 EXPORT

None by default.

=head1 AUTHOR

Chindraba, E<lt>projects@chindraba.workE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright © 2023 Chindraba (Ronald Lamoreaux)
                  <projects@chindraba.work>
- All Rights Reserved

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use, copy,
modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

=cut

# vim: syntax=perl ts=4 sw=4 sts=4 et sr
