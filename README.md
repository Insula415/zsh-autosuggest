# zsh-autosuggest
zsh-autosuggestions sometimes conflicts with the history of oh my zsh. This is a simple bash script that can enable and disable zsh-autosuggestions when convenient.

# Setup
Clone or paste the contents of suggest.sh into a bash file -> `vi suggest.sh`

Make it executable:
`chmod +x suggest.sh`

And finally add to PATH:
`sudo mv suggest.sh /usr/local/bin/suggest`

Now you can run `suggest -enable` to enable auto-suggestions or `suggest -disable`
