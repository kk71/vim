kK's Vim
========

so here comes my own vimrc now:P

![kk's vimrc screenshot](https://raw.github.com/kk71/vim/master/screenshot.png)

### Mainly support:

* C, CPP(not enabled by default)
* Python(for py3k only syntax check is supported,
    since i turn to PyCharm as my python dev IDE, 
    functions for python is no longer maintained)
* Golang(nowadays I uses vim as my golang ide)
* Html with angularjs support, js with a lot of js libraries , CSS highlighting and auto-complete
* Shell
* SQL
* Markdown
* Nginx.conf and units for systemd

### Install

```bash
# Bash commands tested in Archlinux

# install required tools --noconfirm
sudo pacman -S python-pylint astyle python-pip ruby mercurial go --noconfirm
sudo pacman -S vim-systemd --noconfirm
sudo pip install autopep8

# setup vimrc
cd
git clone https://github.com/kk71/vim.git
mv vim .vim 
ln -s .vim/vimrc .vimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# install go.tools from code.google.comment
# if you're using a proxy, set them manulally
# NOTE: these are only for Bash!
# NOTE: if you're using a proxy like go-agent, don't forget to install it's cert system-widely!
export http_proxy=http://localhost:8087 # for go-agent
export https_proxy=http://localhost:8087 # for go-agent in https

# Done!
vim .vimrc # edit .vimrc, enable or comment plugins you need
```

then enter Vim/gVim, press :BundleInstall to install plugins.

TODO : read all TODOs in .vimrc and make your .vimrc configured

