### on a new machine

```
cd
mkdir -p .local
cd .local
git clone https://github.com/glb23/dot
cd
source .local/dot/init
```

If mc does not use the correct theme, make sure you are in bash. 
Then you can edit `~/.bashrc` and insert this after the first if-fi block:

`export TERM=xterm-256color`

You need to `source ~/.bashrc` and mc should then use the correct theme.

### update

```
cd
cd .local/dot
git pull
cd
source .local/dot/init
```

### clean mc

```
cd
rm -r .config/mc
rm -r .local/share/mc
```
