
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

set -x PATH ~/anaconda3/bin $PATH

set -x JAVA_HOME /Library/Java/Home
#set -x JAVA_HOME /System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
#set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home

### Ruby (rbenv) ###
set -gx RBENV_ROOT /usr/local/var/rbenv

alias ffs fuck

alias g git
alias gc "git commit"
alias gs "git status"
alias gp "git push origin HEAD"
alias gaa "git add ."
alias gd "git diff"
alias gf "git fetch"

alias dos2lf 'dos2unix `find ./ -type f`'

alias dnsflush 'dscacheutil -flushcache'

alias sshconfig 'vi ~/.ssh/config'

fish_vi_key_bindings

function fish_mode_prompt
end

if test -e ~/.pw
  source ~/.pw
end
