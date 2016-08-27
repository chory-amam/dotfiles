if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
# settings go lang
export GOPATH=$HOME/Documents/lib/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOPATH/bin

# settings gradle
export GRADLE_HOME=/usr/local/Cellar/gradle/2.14.1
export PATH=$PATH:$GRADLE_HOME/bin
