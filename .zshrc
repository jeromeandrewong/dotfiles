
export PATH=/opt/homebrew/bin:$PATH
export PATH=$PATH:/Users/jeromewong/.gem/bin
export PATH=$PATH:$(go env GOPATH)/bin

echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

export NVM_DIR="$HOME/.nvm"
export GEM_HOME="$HOME/.gem"

[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh" # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && \. "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# plugins
source $(brew --prefix nvm)/nvm.sh
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# starship
eval "$(starship init zsh)"

# fzf settings and alias
fcd(){
    local dir
    dir=$(find ${1:-.} -type d -not -path '*/\.*' 2> /dev/null | fzf +m) && cd "&dir"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# git
alias g="git"
alias gc="git commit -m"  # + commit message
alias gca="git add . && git commit -m"  # + commit message
alias gs="git status -sb"
alias gl="git log --pretty=short"
alias gd="git diff"
alias gpl="git pull"
alias gp="git push"
alias gds="git diff --staged"
alias gpom="git push origin main"
alias glom="git pull origin main"
alias gpo="git push origin"  # + branch name
alias glo="git pull origin"  # + branch name
alias glfm="git fetch && git reset origin/main --hard"
alias gb="git checkout"  # + existing branch name
alias gbn="git checkout -b"  # + new branch name
alias grm="git rebase -i origin/main"
alias gundo="git reset --soft HEAD~1"
alias gres="git reset"
alias github="gh repo view --web"
alias gist="gh gist create --web"

# docker
alias dps="docker ps -a"
alias dc="docker compose"
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dcr="docker compose down && docker compose up -d"
alias dcl="docker compose logs -f"

# open current working directory in VS Code
alias vs="code ."

# dev workflow
alias nrd="npm run dev"
alias yrd="yarn dev"
alias prd="pnpm run dev"

. /opt/homebrew/opt/asdf/libexec/asdf.sh
