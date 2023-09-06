### First Install

(How to update see below)

Be careful if you have local modifications in any config files, this overwrites everything without asking and without backups. See the
`init` script for details.

```
mkdir -p ~/.local/dot
rm -Rf ~/.local/dot
cd ~/.local
git clone https://github.com/glb23/dot
cd ~
.local/dot/install.sh

# Run this after any changes in your tmux config. It can be run from in- or outside
# a tmux session. There is only one central tmux server where this is applied:
tmux source-file .tmux.conf
```

### How to update

Go to the `~/.local/dot` directory and clean it up, commit or stash any changes. 

Then run `git pull`.
Then run `./install.sh` again.

## Bash recommended

This setup recommends bash. You can check the current shellfor the current user and change it to `/bin/bash` with the following commands:

```
cat /etc/passwd|grep $USER
sudo chsh -s $(which bash) $USER
cat /etc/passwd|grep $USER
```

## Select the best alternative configuration

There was a file `~/.tmux.marker1` created to mark alternative configuration 1.

If you need the alternatvie configuration 2 on that machine, rename the file to have `2` at the end.


If mc does not use the correct theme, make sure you are in bash. 
Then you can edit `~/.bashrc` and insert this after the first if-fi block:

`export TERM=xterm-256color`

You need to `source ~/.bashrc` and mc should then use the correct theme.

## vim and neovim

The setup can be used for both vim and neovim.
