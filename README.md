# STB image Updater

## Contents

-  [Description](#description)
-  [Requirements](#requirements)
-  [Installation](#installation)
-  [Usage](#usage)
-  [Versioning](#versioning)
-  [Copyright and License](#copyright-and-license)
   -  [The MIT License](#the-mit-license)


---
## Description

A Perl implementation for creating USB sticks with update images for set-top boxes in the Dish satellite network.

The current, and past, images are hosted on Dish servers. The program needs to compare the local image to the remote image. If a new version is available, that image needs to be downloaded, as zip file and extracted. The program also needs the ability to copy that image to USB sticks attached to the computer, as well as to convert new, to the program, sticks for use by the program.

The program needs to have 5 operational modes:
  - Upon user request, check for remote updates and notify the user if none is available, or offer to download it if one is available
  - Upon user request, copy the local image to attached USB sticks, with the ability to select which sticks, of the ones available, are to be updated (sticks not prepared are not offered). Every stick written must also be verified with the results presented to the user. (Simultaneous writing is better)
  - Upon user request, prepare a USB stick for later use by the program
  - Upon user request, blank a USB stick, removing the update image, and restoring it to NTFS compatibility
  - When invoked as a cron job, download the new update, if any, and update all eligible USB sticks attached to the system

The plan is to develop in sections based on either the amount of user actions saved once working, or the speed with which the section can be implemented. Initial work will be CLI-based and hard-coded settings. After a fully operational CLI implementation is in service, updating to a GUI version will be started.

[TOP](#contents)

---
## Requirements

TODO

Linux OS (BSD/Mac maybe, Window no, WSL probably not)
Bash shell (maybe)
Perl
Perl Module Digest::MD5
Perl Module Time::HiRes (I think)
Perl Module LWP::Simple (I think)
Probably a JSON module, or two
Usable USB ports
Internet connection (always-on probably)
Root access with the ability to give the program root access (direct access to the USB. a la `dd` requires it)

[TOP](#contents)

---
## Installation

TODO

[TOP](#contents)

---
## Usage

TODO

[TOP](#contents)

---
## Versioning

The **STB Image Updater** project uses Semantic Versioning v2.0.0.

[Semantic Versioning](https://semver.org/spec/v2.0.0.html) was created by [Tom Preston-Werner](http://tom.preston-werner.com/), inventor of Gravatars and cofounder of GitHub.

Version numbers take the form X.Y.Z where X is the major version, Y is the minor version and Z is the patch version. The meaning of the different levels are:

* Major version increases indicates that there is some kind of change in the API (how this program works as seen by the user) or the program features which is incompatible with previous version

* Minor version increases indicates that there is some kind of change in the API (how this program works as seen by the user) or the program features which might be new, while still being compatible with all other versions of the same major version

* Patch version increases indicate that there is some internal change, bug fixes, changes in logic, or other internal changes which do not create any incompatible changes within the same major version, and which do not add any features to the program operations or functionality

[TOP](#contents)

---
## Copyright and License

The MIT license applies to all the code within this repository.

Copyright © 2023  Chindraba (Ronald Lamoreaux)

   <[projects@chindraba.work](mailto:projects@chindraba.work?subject=STB_Image_Updater)>

- All Rights Reserved

### The MIT License

    Permission is hereby granted, free of charge, to any person
    obtaining a copy of this software and associated documentation
    files (the "Software"), to deal in the Software without restriction,
    including without limitation the rights to use, copy, modify, merge,
    publish, distribute, sublicense, and/or sell copies of the Software,
    and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:

    The above copyright notice and this permission notice shall be
    included in all copies or substantial portions of the Software

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGE-
    MENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
    FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
    CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
    WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[TOP](#contents)
