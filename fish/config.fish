if not status is-interactive
    exit
end

# Created by `pipx` on 2025-03-14 06:55:59
set PATH $PATH /home/egoreast/.local/bin

zoxide init fish | source

# Эти пути будут добавлены в $PATH единожды
fish_add_path -m ~/bin ~/.local/bin

# Определим переменные XDG
set -q XDG_DATA_HOME || set -U XDG_DATA_HOME $HOME/.local/share
set -q XDG_STATE_HOME || set -U XDG_STATE_HOME $HOME/.local/state
set -q XDG_CONFIG_HOME || set -U XDG_CONFIG_HOME $HOME/.config
set -q XDG_CACHE_HOME || set -U XDG_CACHE_HOME $HOME/.cache

set -U fish_key_bindings fish_vi_key_bindings

# Двойное нажатие ESC не работает, если выставить меньше
set -g fish_escape_delay_ms 300

set -Ux EDITOR nvim
set -Ux VISUAL nvim
set -gx BROWSER xdg-open

set -U PROJECT_PATHS ~/Programming/exarh-web ~/Yandex.Disk/ ~/Yandex.Disk/Obsidian/
set -U __done_min_cmd_duration 20000 # default: 5000 ms
set -U __done_exclude '^(v|nvim|y|yazi|m|cmus|g|lazygit)' # default: all git commands, except push and pull. accepts a regex.
set -U __done_notify_sound 1
set -U pisces_only_insert_at_eol 1

alias y="yazi"
alias v="nvim"
alias m="cmus"
alias g="lazygit"
alias enable_keyboard1="sudo chmod 777 /dev/hidraw1"
alias enable_keyboard2="sudo chmod 777 /dev/hidraw2"
alias ls='lsd'
alias browser='yandex-browser-stable'
alias update_fisher='fisher update'
alias upgrade_yazi='ya pkg upgrade'
alias update_packages='sudo pacman -Syu'
alias update_packages_yay='yay'
alias disk_usage='gdu'
alias repo_info='onefetch'
alias system_info='fastfetch'
alias resources_usage='btm'
alias resources_usage_htop='htop'
alias download_from_youtube='yt-dlp'
alias yandex-disk='yandex-disk'
alias live-server-run='live-server --port=3000 --host=localhost'
