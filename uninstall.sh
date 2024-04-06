#!/bin/bash

foldercolorDE='plasma-folder-color.desktop'
foldercolorSY='plasma-color-symbolic.desktop'
foldercolorSH='dolphin-folder-color'
ROOT_UID=0 
DEST_DIR=''
EXEC_DIR=''

    if [ "$UID" -eq "$ROOT_UID" ]; then

        DEST_DIR="/usr/share/kio/servicemenus"
        EXEC_DIR="/usr/bin/"
        
        rm "$EXEC_DIR/$foldercolorSH" "$DEST_DIR/$foldercolorDE" "$DEST_DIR/$foldercolorSY"

        echo 'UNINSTALLED OK'
    
    else
        DEST_DIR="$HOME/.local/share/kio/servicemenus"
        
        rm "$DEST_DIR/$foldercolorSH" "$DEST_DIR/$foldercolorDE" "$DEST_DIR/$foldercolorSY"

        echo 'UNINSTALLED OK'

   fi