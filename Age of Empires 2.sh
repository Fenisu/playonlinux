#!/bin/bash
# Date : (2016-01-15 21-00)
# Wine version used : 1.9.1
# Distribution used to test : ArchLinux amd4
# Author : Fenisu
# Licence : Retail
# Only For : http://www.playonlinux.com
# Script available at: https://github.com/Fenisu/playonlinux
 
[ "$PLAYONLINUX" = "" ] && exit 0
source "$PLAYONLINUX/lib/sources"


TITLE="Age of Empires 2"
SHORTCUT_NAME="Age of Empires 2"
PREFIX="AoE2"
WORKING_WINE_VERSION="1.9.1"

POL_SetupWindow_Init
POL_SetupWindow_presentation "Age of Empires 2" "Microsoft Games" "http://www.microsoft.com/" "Emblema Studios " "Age of Empires 2 (no-HD)"

POL_Wine_SelectPrefix "$PREFIX"
POL_System_SetArch "x86"
POL_Wine_PrefixCreate "$WORKING_WINE_VERSION"


POL_SetupWindow_browse "$(eval_gettext 'Please select the executable empires2.exe inside the AoE2 folder.')" "$TITLE"
EXTRACTED_DIR=`dirname "$APP_ANSWER"`

mv "$EXTRACTED_DIR" ~/.PlayOnLinux/wineprefix/"$PREFIX"/drive_c
POL_Wine_WaitExit "$TITLE"

POL_Shortcut "empires2.exe" "$TITLE"

POL_SetupWindow_Close
exit
