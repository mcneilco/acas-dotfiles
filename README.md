
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

This repo is meant to be forked by you into your own private git repo. It serves as a starting place for people to share their alias' and function's

## Installation

> Note, this will overwrite my .bash_profile

git clone git@bitbucket.org:mcneilco/dotfiles.git ~/.dotfiles

cd ~/.dotfiles

cp system/.bash_profile ~/.bash_profile
