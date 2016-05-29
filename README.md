# vim-config

Based on `pivotalcommon/vim-config` and forked from `spikegrobstein/vim-config`.
All plugins exist as submodules, so be sure to follow the installation directions in this document.

This config is currently geared toward front-end development.

## To Install

(Re)move ~/.vim and ~/.vimrc if you have them already, and run:  
  
  1. `git clone git@github.com:JBlackCat/vim-config.git ~/.vim`  
  
  2. `cd ~/.vim`  
  
  3. `git submodule update --init`  
  
  4. `ln -s ~/.vim/vimrc ~/.vimrc`

### tmux support (optional)

This contains a base `tmux.conf`, [pivotal/tmux-config](https://github.com/pivotal/tmux-config/tree/3636ae648d5013294e8eb1d15ee7e011204e3581).

- Symlink the bundled config:  
`ln -s ~/.vim/bundle/tmux-config/tmux.conf ~/.tmux.conf`

- To *enable autosave* in vim while using tmux:  
`source ~/.vim/bundle/tmux-config/tmux-autowrite/autowrite-vim.sh`

### FZF support

By default, this vim config will use ctrl-p for fuzzy file opening (via `<leader>f`), however if it detects
that you've got `fzf` installed, it'll use that instead. `fzf` is a much faster fuzzy finder that's written in
go and even has tmux integration.

You can install `fzf` with the following command:

    brew install --head fzf
    # then run the following to install the bash additions:
    /usr/local/opt/fzf/install

if you use `ag`, you can (optionally) add the following line to your `~/.bash_profile`:

    export FZF_DEFAULT_COMMAND='ag -l -g ""'

that will use `ag` to list the files and ignore files/directories that are in your `.gitignore`. `ag` can also
be installed with brew as `the_silver_searcher`.


## Updating

Update submodules with:

    cd ~/.vim && git submodule foreach git pull origin master
