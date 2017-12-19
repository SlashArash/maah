# Maah Theme v1.0
#
# https://github.com/slasharash/maah
#
# Copyright 2017, All rights reserved
#
# Code licensed under the MIT license
#
# @author Arash Kadkhodaei <slasharash@protonmail.com>

_maah_collapsed_wd() {
  echo $(pwd | perl -pe '
   BEGIN {
      binmode STDIN,  ":encoding(UTF-8)";
      binmode STDOUT, ":encoding(UTF-8)";
   }; s|^$ENV{HOME}|~|g; s|/([^/.])[^/]*(?=/)|/$1|g; s|/\.([^/])[^/]*(?=/)|/.$1|g
')  
}

if [[ $UID -eq 0 ]]; then
    local user_host="%{$reset_color%}%{$fg[red]%}%n@%m%{$reset_color%}"
else
    local user_host="%{$fg[green]%}%n%{$reset_color%}"
fi


PROMPT='%{$fg[green]%}🌙 ${user_host}:%{$fg[blue]%}$(_maah_collapsed_wd)%{$reset_color%} $(git_prompt_info)%{$fg_bold[red]%}%(!.#.⇨)%{$reset_color%} '

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[%{$fg_no_bold[yellow]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$fg_bold[blue]%}]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ✗"

# LS colors, made with http://geoff.greer.fm/lscolors/
export LSCOLORS="Exfxcxdxbxegedabagacad"
export LS_COLORS='di=1;35:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
