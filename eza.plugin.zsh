if ! (( $+commands[eza] )); then
  print "zsh-eza-plugin: eza not found on path. Please install eza before loading this plugin." >&2
  return 1
fi

export TIME_STYLE="${TIME_STYLE:-long-iso}"

alias ls='eza --git --group-directories-first'
alias l='ls -blF'
alias ll='ls -al'
alias llm='ll --sort=modified'
alias la='ls -abghilmu'
alias lx='ls -abghilmuHSU@'
alias tree='eza --tree'
