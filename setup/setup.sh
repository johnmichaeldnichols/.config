#!/bin/bash

[Environment]::SetEnvironmentVariable('XDG_CONFIG_HOME', "$HOME/AppData/Local/.config", "User")

#Run this in pwsh before doing anything lol #Set-ExecutionPolicy unrestricted
https://ohmyposh.dev/docs/migrating
#above is for powershell only, install with command below:
#first you must setup powershell profile 
#add this: oh-my-posh init pwsh | Invoke-Expression
#to $PROFILE in powershell 
#then update with: . $PROFILE
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/gruvbox.omp.json" | Invoke-Expression  #current
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/jandedobbeleer.omp.json" | Invoke-Expression  #default
#in the future make your own , and then adjust the init line with yoru $PROFILE by adding the --config flag with the location of your custom config 
#like so: oh-my-posh init pwsh --config ~/jandedobbeleer.omp.json | Invoke-Expression
#then reload profile: . $PROFILE

#if you want to use a github or local file you can use a custom config
#oh-my-posh init pwsh --config 'C:/Users/Posh/jandedobbeleer.omp.json' | Invoke-Expression
#oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/jandedobbeleer.omp.json' | Invoke-Expression

#to install nerd-fonts for nvim on windows ONLY 
choco install nerd-fonts-hack
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz

#checks var to be set
[System.Environment]::GetEnvironmentVariable('XDG_CONFIG_HOME')

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


