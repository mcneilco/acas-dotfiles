for DOTFILE in `find /etc/profile.d/acas-dotfiles -type f -iname '.*' -not -path '.' -not -iname '.git' -not -iname '.bash_profile'`
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
