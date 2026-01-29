eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv zsh)"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gnzh"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh

# ALIASES
alias ftmt="forge test --match-test"
alias ftmp="forge test --match-path"
alias cursor="agent"
alias gf="git fetch"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gup="git pull"
alias gupr="git pull --rebase"
alias gc="git commit -v"
alias gst="scmpuff_status"
alias gds="git diff --staged"
alias gs="git stash"
alias gsp="git stash pop"
alias gsa="git stash apply"
alias gss="git stash --staged"
alias gca="git commit -v --no-edit --amend"
alias gcam="git commit -v --amend"
alias gch="git checkout"
alias gchm="git checkout master"
alias gchs="git checkout staging"
alias gchp="git cherry-pick"
alias grs="git reset --soft"
alias grh="git reset --hard"
alias grbc="git rebase --continue"
alias grba="git rebase --abort"
alias grb="git rebase"
alias grbi="git rebase -i"
alias grbm="git rebase master"

pbcopy() {
  printf "\033]52;c;%s\007" "$(base64 -w0)"
}

vo() { eval "$(scmpuff expand -- "$EDITOR" "$@")" }
gd() { git diff $(scmpuff expand -- "$@") }
gds() { git diff --staged $(scmpuff expand -- "$@") }
gch() { git checkout "$@" }
unstage() { git reset -- "$@"; gst }
revert() { git checkout -- "$@"; gst }
fixup(){ git commit --fixup "$@" }


# bun completions
[ -s "/home/vscode/.bun/_bun" ] && source "/home/vscode/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Init scmpuff
eval "$(scmpuff init -s)"
