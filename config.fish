
#My Scripts
set -x PATH $PATH . /usr/bin /usr/sbin /bin /sbin

#Brew
set -x PATH /usr/local/sbin /usr/local/bin $PATH

# GO
set -x GOROOT /usr/local/opt/go/libexec
set -x GOPATH ~/go
set -x PATH $PATH $GOROOT/bin $GOPATH/bin

set -x PATH /usr/local/OPT/activator/bin $PATH

set -x PATH ~/apps/maven/apache-maven-3.2.5/bin $PATH

set -x PATH ~/instantclient_12_1 $PATH


#set -x JAVA_HOME /Library/Java/Home
#set -x JAVA_HOME /System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_92.jdk/Contents/Home



### Ruby (rbenv) ###
set -gx RBENV_ROOT /usr/local/var/rbenv

omf theme lambda

alias ffs fuck

alias g git

alias gc "git commit"

alias gs "git status"

alias gp "git push"

alias dos2lf 'dos2unix `find ./ -type f`'

alias dnsflush 'dscacheutil -flushcache'