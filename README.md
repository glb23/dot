### on a new machine

```
cd
mkdir -p .local
cd .local
git clone https://github.com/glb23/dot
cd
source .local/dot/init
```

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
