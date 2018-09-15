#!/usr/bin/env bash
vim_dir=~/.vim
config_dir=~/.config/vim
backup_dir=$config_dir/backup

maybe_do_backup() {
  if ! [ -e $vim_dir ]; then
    return 0
  fi

  read -r -p "Backup existing $vim_dir to $backup_dir? [y/n] "
  if  ! [[ "$REPLY" =~ ^[Yy]$ ]]; then
    skip_backup && return 0
  fi
  echo

  # Check if $vim_dir is symlink
  if [ -L $vim_dir ]; then
    # Show symlink info
    echo "ls -lo $vim_dir"
    ls -lo $vim_dir
    # See if we still want to backup
    read -r -p "$vim_dir is a symbolic link. Backup link target? [y/n] "
    if  ! [[ "$REPLY" =~ ^[Yy]$ ]]; then
      skip_backup && return 0
    fi
  fi
  echo

  if do_backup ; then
    echo "Backup complete"; echo; return 0
  else
    fail "Could not complete backup"
  fi
}

do_backup() {
  # Do backup
  backup_name=$(date +%Y-%m-%d_%s)
  echo "Copying $vim_dir to $backup_dir/$backup_name"
  mkdir -p $backup_dir
  cp -RL $vim_dir $backup_dir/$backup_name && return 0
}

do_delete() {
  [ -e $vim_dir ] && echo "Deleting $vim_dir"
  rm -rf $vim_dir 2> /dev/null

  if [ -e $vim_dir ]; then
    fail "Could not delete existing $vim_dir"
  fi
}

do_install() {
  echo "Creating symlink: ln -s $config_dir $vim_dir"
  ln -s $config_dir $vim_dir && return 0

  # Failed to return
  fail "Could not create symlink: ln -s $config_dir $vim_dir"
}

do_plug_install() {
  echo "Installing vim plugins..."
  nvim +PluginInstall && return 0
}

do_ycm_install() {
  echo "Installing youcompleteme..."
  "python $vim_dir/plugged/youcompleteme/install.py"
}

skip_backup() {
  echo "Skipping backup of existing $vim_dir"
}

fail() {
  echo "FAILURE: $1"; exit 1;
}

main() {
  # Abort if we are already installed
  [ -L $vim_dir ] && cd $vim_dir && realpath=$(pwd -P)
  if [[ "$realpath" = "$config_dir" ]]; then
    echo "$config_dir already exists"
    do_plug_install && do_ycm_install && echo "Done" && exit 0
  fi

  # Ask for backup if necessary
  # maybe_do_backup will fail if we tried to backup but couldn't
  if maybe_do_backup ; then
    do_delete
    do_install
    do_plug_install && do_ycm_install && echo "Done" && exit 0
  fi
}

main "$@"
