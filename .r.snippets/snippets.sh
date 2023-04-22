#!/bin/bash
sa(){
  ssh-agent | grep -v 'echo' > /home/r/.ssh_agent_info
  source /home/r/.ssh_agent_info
  ssh-add /home/r/.ssh/id_ed25519
	ssh-add /home/r/.ssh/new-github
}

fs() {
  local dir
  if [ $# -eq "0" ] ; then
	  dir=$(cat /home/r/.ssh/config  | grep '^Host ' | cut -d' ' -f2 | fzf +m --header="Переход к серверу")  && ssh "$dir"
  else
	  dir=$(cat /home/r/.ssh/config  | grep '^host ' | grep "$1" | cut -d' ' -f2 | fzf +m --header="Переход к серверу") && set_xterm_title "xterm SSH to $dir" && ssh "$dir"; set_xterm_title "xterm"
  fi
}


work() {
	local dir
	dir=$(ls /home/r/common/0work | fzf +m) && cd /home/r/common/0work/"$dir"

	if [ -f .nvmrc ]; then
		use-nvm
		echo "Switching node: "
		cat .nvmrc
		nvm use;
	fi
}

pet() {
	local dir
	dir=$(ls /home/r/common/1pet | fzf +m) && cd /home/r/common/1pet/"$dir"

	if [ -f .nvmrc ]; then
		use-nvm
		echo "Switching node: "
		cat .nvmrc
		nvm use;
	fi

}

learn() {
	local dir
	dir=$(ls /home/r/common/2learn | fzf +m) && cd /home/r/common/2learn/"$dir"
}

function cd_() {
  mkdir $1
  cd $1
}


setNpmMirror() {
  local registries=(
    'https://registry.npmjs.org/'
    'https://nexus.vzhyx.digital/repository/npm-available/'
  )

  local current

  current=$(printf "%s\n" "${registries[@]}" | fzf +m) &&
  sed --in-place '/registry/d' /home/r/.npmrc &&
  sed --in-place '/registry/d' /home/r/.yarnrc &&
  echo registry="$current" >> /home/r/.npmrc &&
  echo registry="$current" >> /home/r/.yarnrc
}
