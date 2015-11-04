for DOTFILE in `find ./.dotfiles -type f -iname '.*' -not -path '.' -not -iname '.git' -not -iname '.bash_profile'`
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
