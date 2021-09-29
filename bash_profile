eval 'set +o history' 2>/dev/null || setopt HIST_IGNORE_SPACE 2>/dev/null
 touch ~/.gitcookies
 chmod 0600 ~/.gitcookies

 git config --global http.cookiefile ~/.gitcookies

 tr , \\t <<\__END__ >>~/.gitcookies
hardware-mfg-internal.googlesource.com,FALSE,/,TRUE,2147483647,o,git-essim.google.com=1//0fDNA7dxYR1yUCgYIARAAGA8SNwF-L9IrBAe5fA7QDTCJbEDU50NNk6J8wnj0MKjrq1Q5xwKwAlNeWnWAtY5lsiG3JuJfSHNu1AY
hardware-mfg-internal-review.googlesource.com,FALSE,/,TRUE,2147483647,o,git-essim.google.com=1//0fDNA7dxYR1yUCgYIARAAGA8SNwF-L9IrBAe5fA7QDTCJbEDU50NNk6J8wnj0MKjrq1Q5xwKwAlNeWnWAtY5lsiG3JuJfSHNu1AY
__END__
eval 'set -o history' 2>/dev/null || unsetopt HIST_IGNORE_SPACE 2>/dev/null


alias q=’exit’
alias c=’clear’
alias h=’history’
alias p=’cat’
alias pd=’pwd’
alias t=’time’
alias k='kill'
alias null=’/dev/null’
alias c='clear'
alias ll='ls -al'


## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# handy short cuts #
alias h='history'
alias j='jobs -l'


# added by Anaconda3 2019.10 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
# . "/opt/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/essim/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/essim/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/essim/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/essim/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/essim/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/essim/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/essim/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/essim/Downloads/google-cloud-sdk/completion.bash.inc'; fi
