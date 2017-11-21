for DOTFILE in `find /etc/profile.d/acas-dotfiles -type f -iname '.*' -not -path '.' -not -iname '.git' -not -iname '.bash_profile' -not -iname '.osx-env-sync.sh'`
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
