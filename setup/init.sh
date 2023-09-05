#!/bin/bash

https://stackoverflow.com/questions/3466166/how-to-check-if-running-in-cygwin-mac-or-linux

case "$OSTYPE" in
  linux*)   echo "Linux / WSL" ;;
  darwin*)  echo "Mac OS" ;; 
  win*)     echo "Windows" ;;
  msys*)    echo "MSYS / MinGW / Git Bash" ;;
  cygwin*)  echo "Cygwin" ;;
  bsd*)     echo "BSD" ;;
  solaris*) echo "Solaris" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac

#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform        
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under 32 bits Windows NT platform
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    # Do something under 64 bits Windows NT platform
fi

#!/bin/bash

case "$(uname -sr)" in

   Darwin*)
     echo 'Mac OS X'
     ;;

   Linux*Microsoft*)
     echo 'WSL'  # Windows Subsystem for Linux
     ;;

   Linux*)
     echo 'Linux'
     ;;

   CYGWIN*|MINGW*|MINGW32*|MSYS*)
     echo 'MS Windows'
     ;;

   # Add here more strings to compare
   # See correspondence table at the bottom of this answer

   *)
     echo 'Other OS' 
     ;;
esac

#!/bin/bash

$env:XDG_CONFIG_HOME = "$HOME/AppData/Local/.config"

echo env:XDG_CONFIG_HOME


