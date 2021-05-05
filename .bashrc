# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/sci/wasim/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/sci/wasim/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/sci/wasim/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/sci/wasim/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Set vi mode
set -o vi

# Source Alias
source ~/.alias

# Add local library path
export PATH=$HOME/local/bin:$PATH
export LD_LIBRARY_PATH=$HOME/local/lib:$LD_LIBRARY_PATH
export MANPATH=$HOME/local/share/man:$MANPATH

# Activate conda ml_dl_37 profile
conda activate ml_dl_37

# SLURM Aliases that provide information in a useful manner for our clusters
alias si="sinfo -o \"%20P %5D %14F %8z %10m %10d %11l %32f %N\""
alias si2="sinfo -o \"%20P %5D %6t %8z %10m %10d %11l %32f %N\""
alias sq="squeue -o \"%8i %12j %4t %10u %20q %20a %10g %20P %10Q %5D %11l %11L %R\""
alias myslurmaccts='printf "%-15s%-25s%s\n" "Cluster" "Account" "Partition" && sacctmgr -p show assoc user=$USER | awk -F"|" "NR>1 { printf \"%-15s%-25s%s\n\", \$1, \$2, \$18 }" | sort'


#### Bash settings
## Bash history settings
# Append history instead of rewriting it
shopt -s histappend

# Allow a larger history file
HISTFILESIZE=1000000
HISTSIZE=1000000

# Don’t store specific lines
HISTCONTROL=ignoreboth
HISTIGNORE='ls:bg:fg:history'

# Record timestamps
HISTTIMEFORMAT='%F %T '

# Use one command per line
shopt -s cmdhist

# Store history immediately
PROMPT_COMMAND='history -a'
