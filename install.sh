#/bin/bash
mkdir -p ~/.config
mkdir -p ~/.local/share

# The different directory locations could either be symlinks pointing
# to locations inside the dot directory.

# Or they could be actual file trees, when this is the first install.

# To ensure we don't mistakenly delete the file trees inside the dot
# directory, we first treat the target locations as symlinks and
# remove them with the simple `rm` command.

# At this point we are sure that if anythoing remains, it is the original
# file tree, so we can safely remove it with `rm -R`.


# 1. tmux

rm ~/.tmux.conf 2>/dev/null
ln -s ~/.local/dot/.tmux.conf ~/.tmux.conf

# If no local markers for tmux are present, set marker 1.
# Never remove local markers:
if [ -z "$(ls ~/.mark*.tmux 2>/dev/null)" ]; then
  echo "This file marks the version N of" >> ~/.mark1.tmux
  echo " ~./local/dot/.tmux.conf.includeN" >> ~/.mark1.tmux
  echo "that should be included with the .tmux.conf configuration." >> ~/.mark1.tmux
fi

# 2. mc

rm    ~/.local/share/mc 2>/dev/null
rm -R ~/.local/share/mc 2>/dev/null
ln -s ~/.local/dot/.local/share/mc ~/.local/share/mc

rm    ~/.config/mc 2>/dev/null
rm -R ~/.config/mc 2>/dev/null
ln -s ~/.local/dot/.config/mc ~/.config/mc

# 3. nvim
# This has to be done first
rm    ~/.config/nvim 2>/dev/null
rm -R ~/.config/nvim 2>/dev/null
ln -s ~/.local/dot/.config/nvim ~/.config/nvim

# This has to be done last, otherwise the source file
# for the symlink will not exist
rm ~/.vimrc 2>/dev/null
ln -s ~/.config/nvim/init.vim ~/.vimrc