# Improved Sudo for Fish Shell

An improved `sudo` command for fish shell.



## Features

**Enter a superuser shell with a single word.**  
No fiddling with environment variables or having to type `sudo fish`.  
Just type `sudo` and press enter!

```fish
sudo
```

**Press CTRL+S to toggle between a sudo and non-sudo command.**  
One of the most convenient features of bash is the `sudo !!` substitution.  
While fish may not support `!!`, it can do one better with key bindings.  

If you run a command and find out you need to run it as a superuser, simply press UP and CTRL+S to get that command with the word sudo in front of it.

```fish
apt-get update       # No permission.
sudo apt-get update  # After pressing UP and CTRL+S.
```




## Install

With [fisher](https://github.com/jorgebucaran/fisher):

```fish
fisher install eth-p/fish-plugin-sudo
```

### Hotkey Support

The <kbd>Ctrl+S</kbd> hotkey is not added by default. In order to bind the hotkey, add the following to your `config.fish` file:

```fish
bind \cs '__ethp_commandline_toggle_sudo.fish'
```

