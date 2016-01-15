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


TITLE="Command And Conquer : Red Alert 2"
SHORTCUT_NAME="Command And Conquer : Red Alert 2"
PREFIX="RA2"
WORKING_WINE_VERSION="1.9.1"

POL_SetupWindow_Init
POL_SetupWindow_presentation "Command & Conquer: Red Alert 2" "Westwood Games" "http://www.westwood.com/" "DemonHypnos" "Red Alert 2"

POL_Wine_SelectPrefix "$PREFIX"
POL_System_SetArch "x86"
POL_Wine_PrefixCreate "$WORKING_WINE_VERSION"

cd "$HOME"
POL_SetupWindow_browse "$(eval_gettext 'Please select the setup file to run.')" "$TITLE"
SETUP_EXE="$APP_ANSWER"
POL_Wine start /unix "$SETUP_EXE"
POL_Wine_WaitExit "$TITLE"

POL_Shortcut "RA2.exe" "$TITLE"

POL_SetupWindow_Close
exit
