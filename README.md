# dotfiles

Dotfiles using `gnu stow` for my debian system.

System details:
* OS: debian 13
* DE: KDE plasma
* Browser: firefox
* Terminal: kitty
* Editor: neovim 0.12

## How to use these:
Some basic scripts are included to install required dependencies.
Be warned, these are more meant to be used as reference on what dependencies are included rather than for actual use.

`stow dir/` will create sym links for all sub-directories and files within `dir/` starting at the user's $HOME.
For example, a typical Neovim configuration will look like:
```
~/.config
  \_ nvim/
     \_ init.lua
     \_ etc...
```

So, if this repository is located at `~/dotfiles`, one should setup their neovim config as:
```
~/dotfiles
  \_ neovim
     \_ .config
        \_ nvim/
           \_ init.lua
           \_ etc...
```

And to create the links: `stow neovim`.

For more, examples, etc.:
* https://www.gnu.org/software/stow/manual/
* https://www.josean.com/posts/how-to-manage-dotfiles-with-gnu-stow
* https://joshblais.com/blog/gnu-stow/
