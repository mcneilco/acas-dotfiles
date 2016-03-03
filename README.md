
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

# Installation

> Note: this will source all dotfiles in new terminals, you can also just copy a specific .dotfile's contents to you ~/.bash_profile to pick up the alias'/function's...etc.

```
git clone git@bitbucket.org:mcneilco/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
cat system/.bash_profile >> ~/.bash_profile
```
