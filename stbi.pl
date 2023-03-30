#!/usr/bin/env perl

# SPDX-License-Identifier: MIT

########################################################################
#                                                                      #
#  A program to handle the downloading of update software images for   #
#  USB sticks used by technicians to update Dish Network satellite     #
#  set-top boxes.                                                      #
#                                                                      #
#  Copyright © 2023  Chindraba (Ronald Lamoreaux)                      #
#                    <projects@chindraba.work>                         #
#  - All Rights Reserved                                               #
#                                                                      #
#  Permission is hereby granted, free of charge, to any person         #
#  obtaining a copy of this software and associated documentation      #
#  files (the "Software"), to deal in the Software without             #
#  restriction, including without limitation the rights to use, copy,  #
#  modify, merge, publish, distribute, sublicense, and/or sell copies  #
#  of the Software, and to permit persons to whom the Software is      #
#  furnished to do so, subject to the following conditions:            #
#                                                                      #
#  The above copyright notice and this permission notice shall be      #
#  included in all copies or substantial portions of the Software.     #
#                                                                      #
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,     #
#  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF  #
#  MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND               #
#  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS #
#  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN  #
#  ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN   #
#  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE    #
#  SOFTWARE.                                                           #
#                                                                      #
########################################################################

use 5.030000;
use strict;
use warnings;
use Time::HiRes;
use Digest::MD5;
use lib ".";
use STBI::USB;
use STBI::Image ':all';

my $VERSION = '0.0.1';

createUSB 'g';
checkUSB 'g';
writeUSB 'g';
verifyUSB 'g';
wipeUSB 'g';

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

1;

# vim: syntax=perl ts=4 sw=4 sts=4 et sr
