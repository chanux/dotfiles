# use .localrc for settings specific to one system
if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

source ~/.bash/paths
source ~/.bash/config
source ~/.bash/aliases

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
