# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init bash pre)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export GITHUB_HEXO_TOKEN="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"

# Fig post block. Keep at the bottom of this file.
eval "$(fig init bash post)"
