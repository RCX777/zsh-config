# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export XDG_CONFIG_HOME="${HOME}/.config"; mkdir -p ${XDG_CONFIG_HOME}
export XDG_CACHE_HOME="${HOME}/.cache"; mkdir -p ${XDG_CACHE_HOME}
export XDG_DATA_HOME="${HOME}/.local/share"; mkdir -p ${XDG_DATA_HOME}
export XDG_STATE_HOME="${HOME}/.local/state"; mkdir -p ${XDG_STATE_HOME}
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"

# Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
mkdir -p ${XDG_STATE_HOME}/zsh
HISTFILE=${XDG_STATE_HOME}/zsh/zsh_history

[ -f ~/.config/zsh/aliases.zsh ] &&\
    source ~/.config/zsh/aliases.zsh

[ ! -d ${XDG_DATA_HOME}/zsh/zsh-autosuggestions ] &&\
    git clone https://github.com/zsh-users/zsh-autosuggestions \
              ${XDG_DATA_HOME}/zsh/zsh-autosuggestions
source ${XDG_DATA_HOME}/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

[ ! -d ${XDG_DATA_HOME}/zsh/zsh-syntax-highlighting ] &&\
    git clone https://github.com/zsh-users/zsh-syntax-highlighting \
              ${XDG_DATA_HOME}/zsh/zsh-syntax-highlighting
source ${XDG_DATA_HOME}/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ ! -d ${XDG_DATA_HOME}/zsh/zsh-history-substring-search ] &&\
    git clone https://github.com/zsh-users/zsh-history-substring-search \
              ${XDG_DATA_HOME}/zsh/zsh-history-substring-search
source ${XDG_DATA_HOME}/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

[ ! -d ${XDG_DATA_HOME}/zsh/zsh-fzf-history-search ] &&\
    git clone https://github.com/joshskidmore/zsh-fzf-history-search \
              ${XDG_DATA_HOME}/zsh/zsh-fzf-history-search
source ${XDG_DATA_HOME}/zsh/zsh-fzf-history-search/zsh-fzf-history-search.zsh

[ ! -d ${XDG_DATA_HOME}/zsh/powerlevel10k ] &&\
    git clone https://github.com/romkatv/powerlevel10k \
              ${XDG_DATA_HOME}/zsh/powerlevel10k
source ${XDG_DATA_HOME}/zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# eval "$(zoxide init zsh)"

