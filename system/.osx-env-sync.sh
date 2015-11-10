
for ENVIRONMENTFILE in `find $HOME/.dotfiles -type f -iname '.environment'`
do
  grep export $ENVIRONMENTFILE | while IFS=' =' read ignoreexport envvar ignorevalue; do
    launchctl setenv ${envvar} ${!envvar}
  done
done
