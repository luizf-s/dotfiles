# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

feh --bg-fill ~/Pictures/wallpaper.jpg

EDITOR=nvim

source ~/.local/variables
source ~/.local/aliases

function addToPath {
  case ":$PATH:" in
    *":$1:"*) :;;        # already there
    *) PATH="$1:$PATH";; # or PATH="$PATH:$1"
  esac
}

addToPath /home/luizf/programs/bin
addToPath /home/luizf/programs/pwa
addToPath /home/luizf/programs/scripts
addToPath /usr/local/go/bin
addToPath /home/luizf/.local/share/npm/bin
addToPath /home/luizf/.yarn/bin
addToPath /home/luizf/.local/bin
addToPath /home/luizf/.dotnet
addToPath /home/luizf/.dotnet/tools

export GOPATH=/hd/study/go
