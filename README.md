# Dish USB Imager

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

This project is in initial development. Nothing is presumed to be working.

### Roadmap

  - Individual shell scripts will be developed for simple, mostly atomic, operations
  - Initially each script will be set for direct CLI invocation
  - Script command-line parameters may or may not be used
  - Command-line parameters may or may not be documented
  - I18n and l10n are planned for, yet may be inoperational in any given script
  - Development of the `.po`, `.pot`, and `.mo` files for l10n will be 'as convenient'
  - The sequence and level of script development will be based on serendipity and the need for use
  - The eventual top-level script will see sporadic development as convenient and as other scripts are completed
  - The bulk of the l10n operations will tied to, and performed by the top-level script
  - There are no plans for, nor intentions of, support for Mac/Windows operation

### Pending Description, Operational Objectives
A Bash script for Dish STB update image USB sticks.

The current, and past, images are hosted on Dish servers. The script needs to compare the local image to the remote image. If a new version is available, that image needs to be downloaded, as a zip file and extracted. The program also needs the ability to copy that image to USB sticks attached to the computer, as well as to convert new, to the program, sticks for use by the program.

The script needs to have 5 operational modes:
  - Upon user request, check for remote updates and notify the user if none is available, or offer to download it if one is available
  - Upon user request, copy the local image to attached USB sticks, with the ability to select which sticks, of the ones available, are to be updated (sticks not prepared are not offered). Every stick written must also be verified with the results presented to the user. (Simultaneous writing is better)
  - Upon user request, prepare a USB stick for later use by the program
  - Upon user request, blank a USB stick, removing the update image, and restoring it to NTFS compatibility
  - As a cron job, download the new update, if any, and update all eligible USB sticks attached to the system

The plan is to develop in sections based on either the amount of user actions saved once working, or the speed with which the section can be implemented. Initial work will be CLI-based and hard-coded settings. After a fully operational CLI implementation is in service, updating to a GUI version will be considered. semi-GUI from CLI using the `dialog` binary may be an option.

Note: This is a rework from the original plan to use Perl script.


[TOP](#contents)

---
## Requirements

  1. A working Bash shell binary, version 4+
  2. Root-level access thru `sudo`
  3. Ability to update root's `crontab`
  4. Usable USB ports
  5. Internet access


[TOP](#contents)

---
## Installation

Download the archive (version of choice) and uncompress it to `/opt/DishUSBImager/`. Then create a symlink to the script in `/usr/local/bin/`.

Update the system `crontab`

[TOP](#contents)

---
## Usage

TODO

[TOP](#contents)

---
## Versioning

The ** Dish USB Imager ** project uses Semantic Versioning v2.0.0.

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

   <[projects@chindraba.work](mailto:projects@chindraba.work?subject=Dish%20USB%20Imager)>

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
