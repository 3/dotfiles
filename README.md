## Setup

1. Clone repository. `git clone git@bitbucket.org:tristan_ph/btp.git`
2. Create symlink
   `ln -s dotfiles/.vim . && ln -s dotfiles/.vimrc .`
   `ln -s dotfiles/.tmux.conf .`
3. Run `git submodule update`
   `cd dotfiles && git submodule update`
4. Run `vim +PluginInstall +qall`
