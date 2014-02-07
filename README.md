kK's Vim
========

so here comes my own vimrc now:P

![kk's vimrc screenshot](https://raw.github.com/kk71/vim/master/screenshot.jpg)

### Mainly support:

* C, CPP(not enabled by default)
* Python(for py3k only syntax check is supported)
* Html, JS+jQuery, CSS
* Shell
* SQL
* Markdown
* Nginx.conf

### Install

```bash
# Bash commands tested in Archlinux

# install required tools
sudo pacman -S ctags python-pylint astyle python-pip ruby
sudo pip install autopep8

# setup vimrc
cd
git clone https://github.com/kk71/vim.git
mv vim .vim 
ln -s .vim/vimrc .vimrc
git clone https://github.com/gmarik/vundle.git .vim/
vim .vimrc # edit .vimrc, enable or comment plugins you need
```

then enter Vim/gVim, press :BundleInstall to install plugins.

TODO : read all TODOs in .vimrc and make your .vimrc configured

