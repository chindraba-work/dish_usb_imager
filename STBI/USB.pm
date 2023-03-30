package STBI::USB;
# SPDX-License-Identifier: MIT

use 5.030000;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
	checkUSB
	createUSB
	verifyUSB
	wipeUSB
	writeUSB
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	checkUSB
	createUSB
	verifyUSB
	wipeUSB
	writeUSB
);

our $VERSION = '0.0.1';

# Things to do with USB sticks
#   Wipe, remove the update image and create NTFS volume
#   Initialize, clear any data, create new DOS partition table
#       1 partition
#           type: ext2
#           label: '/home/dish1/Tool'
#           start: 2048
#           end: 9510911
#           size: 9508864 sectors
#           size: 4643 MiB
#   Verify as suitable for use by STBIU
#       Check that '/home/dish1/Tool' partition exists
#   Copy .img file to USB, as disk image, not a file
#   Verify integrity of USB relative to .img file digest

sub checkUSB {
    say "Checking USB stick for readiness.";
}

sub createUSB {
    say "Creating new USB stick.";
}

sub verifyUSB {
    say "Verifying USB stick image.";
}

sub wipeUSB {
    say "Wiping USB stick(s).";
}

sub writeUSB {
    say "Writing image to USB stick.";
}


1;
__END__

=head1 NAME

STBI::USB - Perl module to handle USB sticks for the STB Image Updater

=head1 SYNOPSIS

  use STBI::USB;

  createUSB  'f';
  checkUSB  'f';
  writeUSB  'f';
  verifyUSB  'f';
  wipeUSB  'f';

=head1 DESCRIPTION

Initialize, write, and clear USB sticks for the STB Image Updater

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
