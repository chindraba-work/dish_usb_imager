# SPDX-License-Identifier: MIT

# Copyright 2023 Chindraba (Ronald Lamoreaux) <DishUSBImager@chindraba.work>

# Messages file for DishUSBImager script

archive_dir_not_found="The archives directory named in the config file was not found.
- Attempting to switch to default directories."

making_archive_dir="No directory for archives found. Creating '/var/opt/DishUSBImager/archives/'."

missing_archive_dir="Fatal Error:
- The archives directory could not be found or created.
- Execution halted.
"

missing_remote="Fatal Error:
- The remote server is not responding with a valid archive version.
- Execution halted.
"

no_conf_text="No configuration file found. Loading defaults."

usage_text="${script_name}: A program to download STB update images for Dish TV techs.
Usage:
    ${script_name} option [option [option]]

Use ${script_name} --help for more information.
"

# vim: syntax=bash ts=4 sw=4 sts=4 et sr
