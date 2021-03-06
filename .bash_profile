shopt -s extglob
shopt -s histappend
if (( ${BASH_VERSINFO[0]} >= 4 )); then
    shopt -s autocd
    shopt -s globstar
fi

for _akihyro_dotfiles_profile_file in \
    ~/.bashrc \
    ~/.bash_profile.d/*.sh
do
    [[ -f "$_akihyro_dotfiles_profile_file" ]] || continue
    . "$_akihyro_dotfiles_profile_file"
done
unset _akihyro_dotfiles_profile_file
