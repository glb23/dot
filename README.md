### Install or Update

Be careful if you have local modifications, this overwrites everything without asking:

```
mkdir -p ~/.local/dot
rm -Rf ~/.local/dot
cd ~/.local
git clone https://github.com/glb23/dot
cd ~
source .local/dot/init
```

## Select the best alternative configuration

There was a file `~/.tmux.marker1` created to mark alternative configuration 1.

If you need the alternatvie configuration 2 on that machine, rename the file to have `2` at the end.


If mc does not use the correct theme, make sure you are in bash. 
Then you can edit `~/.bashrc` and insert this after the first if-fi block:

`export TERM=xterm-256color`

You need to `source ~/.bashrc` and mc should then use the correct theme.

