# archr.zsh-theme
# Repo: https://github.com/tjirab/custom-oh-my-zsh-themes
# Direct link: https://github.com/tjirab/custom-oh-my-zsh-themes/blob/master/archr.zsh-theme
#
# Inspired by af-magic theme, fishy

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="white"; fi
local return_code="%(?..%{$fg[red]%}%? .%{$reset_color%})"

PROMPT=$'[%n@%m %c]# '

local return_status="%(?..%?)"
RPROMPT='${return_status}$(git_prompt_info)$(git_prompt_status)'

# Git settings
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
