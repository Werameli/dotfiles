export TERM="xterm-color"
export KWIN_TRIPLE_BUFFER=1
export HOST_LANG=en_US.UTF-8
export HOST_LC_ALL=en_US.UTF-8


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host user dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator vcs time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_DISABLE_GITSTATUS=true


# ZPlug

if [[ ! -d ~/.zplug ]];then
    git clone https://github.com/b4b4r07/zplug ~/.zplug
fi
source ~/.zplug/init.zsh

# Theme
zplug romkatv/powerlevel10k, as:theme

# Aliases
zplug "robbyrussell/oh-my-zsh", as:plugin, use:"lib/*.zsh"

# Plugins
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize",          from:oh-my-zsh
zplug "lib/completion",            from:oh-my-zsh
zplug "lib/history",               from:oh-my-zsh
zplug "lib/key-bindings",          from:oh-my-zsh
zplug "lib/termsupport",           from:oh-my-zsh
zplug "lib/directories",           from:oh-my-zsh
zplug "plugins/git",               from:oh-my-zsh
zplug "plugins/history",           from:oh-my-zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma/fast-syntax-highlighting"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "MichaelAquilina/zsh-you-should-use"

zplug check || zplug install
zplug load

alias ls="ls --color"
alias exit="shutdown now"
alias cat='bat'
alias ff="fastfetch"
alias mc="ranger"

export PATH=~/.cargo/bin:$PATH
