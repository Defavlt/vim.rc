vim.rc
======

A simple configuration system for people who couldn't care about remembering how to setup vi/m after every system reset/update/install/etc.
Pulls in the [Vundle plugin manager](https://github.com/gmarik/Vundle.vim "qmarik/Vundle.vim") and automagically configures it.

Usage
-----

Just clone/download the contents of this repo and then run

  ./setup.sh

The script should work regardless of your environment (sh, bash, dash, etc.).
If it doesn't, feel free to edit the file and make a push-request.

Vundle plugin installation
--------------------------

1. Create a plugin file in ./bundle.d (name it after the repo of the plugin, while you put a plugin on each line in the file).
2. Either run vi/m +PluginInstall +qall, or :PluginInstall from vi/m.
3. Profit!
