#!/bin/zsh
# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if gls &>/dev/null; then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la="gls -A --color"
else
  alias ls="ls -F --color"
  alias l="ls -lAh --color"
  alias ll="ls -l --color"
  alias la="ls -A --color"
fi
alias grep="grep --color=auto"
alias duf="du -sh * | sort -hr"
alias less="less -r"

if [[ -z $(command -v pbcopy) ]]; then
  if [[ -n $(command -v xclip) ]]; then
    alias pbcopy="xclip -selection clipboard"
    alias pbpaste="xclip -selection clipboard -o"
  elif [[ -n $(command -v xsel) ]]; then
    alias pbcopy="xsel --clipboard --input"
    alias pbpaste="xsel --clipboard --output"
  fi
fi

if [[ "$(uname -s)" != "Darwin" ]]; then
  function open {
    xdg-open "$@" &> /dev/null
  }
fi
