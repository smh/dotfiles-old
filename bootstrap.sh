#!/bin/bash

SCRIPT=$(basename $0)
SCRIPT_DIR=$(cd $(dirname $0) && pwd)
SOURCE_DIR=$SCRIPT_DIR
TARGET_DIR=$HOME

function green {
  echo "\033[32m$1\033[0m"
} 

function yellow {
  echo "\033[33m$1\033[0m"
}

function red {
  echo "\033[31m$1\033[0m"
}

# Sanely and safely creates symlinks.
# Arguments: $1 = source, $2 = target
function create_symlink {
  source=$1
  target=$2
  if [ -h $target ]; then
    echo -e $(yellow "Existing symlink: $target")
  elif [ ! -e $source ]; then
    echo -e $(red "Error - source does not exist: $source")
    exit
  elif [ -e $target ]; then
    echo -e $(red "Error - regular file at target location $target exists")
    echo -e $(red "Remove the obstruction and re-run this script to continue.")
    exit
  else
    echo -e $(green "Creating symlink: $target")
    ln -s $source $target
  fi
}

# 'Installs' the symlinks to the user's home directory.
function install {
  $SOURCE_DIR/install-prezto.sh
  $SOURCE_DIR/install-vundle.sh
  echo "Installing dotfile symlinks..."
  for path in vimrc tmux.conf inputrc gitconfig vagrant.d jshintrc doingrc; do
    # If dotfile lives in subdirectory, check that it exists/create it
    #target_subdir=$TARGET_DIR/.$(dirname $path)
    #if [ ! -d $target_subdir ] && ! $dryrun; then
    #  mkdir -p $target_subdir
    #fi
    create_symlink $SOURCE_DIR/$path $TARGET_DIR/.$path
  done

  #echo "Installing binary symlinks..."
  #for file in $(ls $BIN_DIR); do
  #  # Check that bin directory exists/create it
  #  if [ ! -d $TARGET_DIR/bin/ ] && ! $dryrun; then
  #    mkdir $TARGET_DIR/bin/
  #  fi
  #  create_symlink $BIN_DIR/$file $TARGET_DIR/bin/$file
  #done

  echo "Done"
}


install
