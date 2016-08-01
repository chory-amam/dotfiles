if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
# settings go lang
export GOPATH=$HOME/Documents/lib/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOPATH/bin
