
# What is this?
This is a way to add convenient commands to your system such as

```
alias ls='ls -alrt'
```

Or

```
alias dkr='eval "$(docker-machine env default)"  && export DOCKER_HOST_IP=$(docker-machine ip default) && echo "DOCKER_HOST_IP=$DOCKER_HOST_IP"'
```

Or

```dkrlogs(){
  foldername=$(basename $(pwd))
  parsed="${foldername//[^A-Za-z0-9 ]/}"
  container=$parsed'_'$1'_1';
  echo $container
  docker logs -f --tail 100 ${container}
}```

# Information

This repo is mean to be forked by you. It serves as a starting place for people to share their alias' and function's

## Installation (specific to bbolt)

> Note, this will overwrite my .bash_profile

git clone git@bitbucket.org:mcneilco/dotfiles.git ~/.dotfiles

cd ~/.dotfiles

git checkout bbolt

cp system/.bash_profile ~/.bash_profile
