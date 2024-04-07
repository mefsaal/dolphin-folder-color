#!/bin/bash

foldercolorDE='plasma-folder-color.desktop'
foldercolorSY='plasma-color-symbolic.desktop'
foldercolorSH='dolphin-folder-color'
ROOT_UID=0 
Dest_dir=''
Exec_dir='/usr/bin/'

    if [ "$UID" -eq "$ROOT_UID" ]; then

        Dest_dir="/usr/share/kio/servicemenus"
        Exec_dir="/usr/bin/"
        
        rm "$Exec_dir/$foldercolorSH" "$Dest_dir/$foldercolorDE" "$Dest_dir/$foldercolorSY"

        echo 'UNINSTALLED OK'
    
    else
        Dest_dir="$HOME/.local/share/kio/servicemenus"
        
        sudo rm "$Exec_dir/$foldercolorSH"

        rm "$Dest_dir/$foldercolorDE" "$Dest_dir/$foldercolorSY"

        echo 'UNINSTALLED OK'

   fi