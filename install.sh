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
        
        mkdir -p    ${DEST_DIR}
        
        cp -f ./$foldercolorSH                      "$EXEC_DIR/$foldercolorSH"
        cp -f ./$foldercolorSY                      "$DEST_DIR/$foldercolorSY"
        cp -f ./$foldercolorDE                      "$DEST_DIR/$foldercolorDE"
        
        chmod +x "$EXEC_DIR/$foldercolorSH"
        chmod +x "$DEST_DIR/$foldercolorSY"
        chmod +x "$DEST_DIR/$foldercolorDE"

        echo 'INSTALLED IN $ROOT DIRECTORY'
    
    else
        DEST_DIR="$HOME/.local/share/kio/servicemenus"
        
        rm "$DEST_DIR/$foldercolorSH" "$DEST_DIR/$foldercolorDE" "$DEST_DIR/$foldercolorSY"
        
        mkdir -p    ${DEST_DIR}
        
        cp -f ./$foldercolorSH                      "$DEST_DIR/$foldercolorSH"
        cp -f ./$foldercolorSY                      "$DEST_DIR/$foldercolorSY"
        cp -f ./$foldercolorDE                      "$DEST_DIR/$foldercolorDE"
        
        chmod +x "$DEST_DIR/$foldercolorSH"
        chmod +x "$DEST_DIR/$foldercolorSY"
        chmod +x "$DEST_DIR/$foldercolorDE"
        
        echo 'INSTALLED IN $USER DIRECTORY'
   fi