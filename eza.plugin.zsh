if ! (( $+commands[eza] )); then
  print "zsh-eza-plugin: eza not found on path. Please install eza before loading this plugin." >&2
  return 1
fi

export TIME_STYLE="${TIME_STYLE:-long-iso}"

alias eza='eza --icons=auto --group-directories-first --header --hyperlink'
alias ls='eza --git --group-directories-first --header --hyperlink'
alias l='ls -blF'
alias ll='ls -al'
alias llm='ll --sort=modified'
alias la='ls -abghilmu'
alias lx='ls -abghilmuHSU@'
alias tree='eza --tree'
