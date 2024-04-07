#!/bin/bash

foldercolorDE='plasma-folder-color.desktop'
foldercolorSY='plasma-color-symbolic.desktop'
foldercolorSH='dolphin-folder-color'
ROOT_UID=0 
Dest_dir=''
Exec_dir='/usr/bin/'

   if [ "$UID" -eq "$ROOT_UID" ]; then

       Dest_dir="/usr/share/kio/servicemenus"
               
       rm "$Exec_dir/$foldercolorSH" "$Dest_dir/$foldercolorDE" "$Dest_dir/$foldercolorSY"
        
       mkdir -p    ${Dest_dir}
        
       cp -f ./$foldercolorSH                      "$Exec_dir/$foldercolorSH"
       cp -f ./$foldercolorSY                      "$Dest_dir/$foldercolorSY"
       cp -f ./$foldercolorDE                      "$Dest_dir/$foldercolorDE"
        
       chmod +x "$Exec_dir/$foldercolorSH"
       chmod +x "$Dest_dir/$foldercolorSY"
       chmod +x "$Dest_dir/$foldercolorDE"

       echo 'INSTALLED IN $ROOT DIRECTORY'
    
   else
       Dest_dir="$HOME/.local/share/kio/servicemenus"
        
       rm "$Dest_dir/$foldercolorSH" "$Dest_dir/$foldercolorDE" "$Dest_dir/$foldercolorSY"
        
       mkdir -p    ${Dest_dir}
        
       sudo cp -f "./$foldercolorSH"               "$Exec_dir/$foldercolorSH"
       sudo chmod +x "$Exec_dir/$foldercolorSH"

       cp -f ./$foldercolorSY                      "$Dest_dir/$foldercolorSY"
       cp -f ./$foldercolorDE                      "$Dest_dir/$foldercolorDE"

       chmod +x "$Dest_dir/$foldercolorSY"
       chmod +x "$Dest_dir/$foldercolorDE"
        
       echo 'INSTALLED IN $USER DIRECTORY'
   fi