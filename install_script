#!/bin/bash
NAME="install_script"
if [[ ! -f $1 ]]; then
  echo "$NAME: $1 does not exist"
  exit
fi
## Can generalize this to all *.XYZ
# strip away .sh if it's there
filename=$1
if [[ $filename == *".sh"* ]]; then
  filename=${filename%???}
fi
# strip away .py if it's there
if [[ $filename == *".py"* ]]; then
  filename=${filename%???}
fi
scripts_dir="$HOME/scripts"
# this needs to be fixed so you ran re-install scripts
# after editing them
script_path="$scripts_dir/$filename"
# create scripts folder if it's not there
if [[ ! -d $scripts_dir ]]; then
  mkdir -p $scripts_dir
fi
bin_path="/usr/local/bin/$filename"
# remove the old symlink if it's there
if [[ `readlink $bin_path` ]]; then
  echo "$NAME: removing old symlink for $bin_path"
  rm $bin_path
fi
cp "$1" $script_path
sudo ln -s $script_path $bin_path
chmod +x $script_path
if [[ `readlink $bin_path` ]]; then
  echo "$NAME: $filename -> $script_path symlink was created"
  echo "$NAME was successful"
else
  echo "$NAME: error while trying to create symlink"
  echo "$NAME failed"
fi