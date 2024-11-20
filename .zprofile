### Personal lines configured
#
## Added PATH
# npm
export PATH=${HOME}/.npm-global/bin:$PATH
#
## Start ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519 &
# start the ssh-agent
#
### End personal lines configured

