
alias "a=awk {'print \$2'}"
alias 'd=du -hs . && df -h .'
alias 'df=df -h'
alias 'du=du -h'
alias 'em=emacs'
alias 'f=tail -f $HOME/procmail/watch_mail.log $HOME/procmail/.accept* $HOME/procmail/from'
alias 'fd=find . -type d -name '
alias 'ff=find . -type f -name '

alias 'j6=export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias 'j7=export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias 'j8=export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
alias 'kff=killall firefox firefox-bin'
alias 'l=ls -al'
alias 'l=ls -alF'
alias 'latest=tail -F ~/bin/log/latest'
alias 'less=less -Mi'
alias 'ls=ls -h'
alias 'lt=ls -ltr'
alias 'mci=mvn clean install'
alias 'md=mkdir'
alias 'mvn=mvn -DdownloadSources=true -DdownloadJavadocs=true'
alias 'nano=nano -w'
alias 'ns=nslookup -sil'
alias 'openpom=open -a /Applications/idea pom.xml'
alias 'pico=nano -w'
alias 'rd=rmdir'
alias 'st_solr3=cd /usr/local/apache-solr-3.5.0/example && java -jar start.jar'
alias 'st_solr4=cd /usr/local/apache-solr-4.0/example && java -jar start.jar'
alias 't=tail -f /Users/fmr/bin/log/rsync.log'
alias 'where=type -all'
alias 'x=xargs'

# FINN
alias 'gits=cd ~/finn/search && for i in `ls`; do echo "----CHECKING $i----"; cd $i; git s; cd ..; done'
alias 'gitu=cd ~/finn/search && for i in `ls`; do echo "----UPDATING $i----"; cd $i; git pull; cd ..; done'
alias 'supergit=git pull && git add -A && git commit -m "supercommit from fmr `date +%s`" && git push -f'


# SSH-ING
for i in `grep "^Host" ~/.ssh/config | grep -v "Host \*" | awk '{print $2, $3, $4, $5, $6, $7, $8}'`; do alias $i="ssh $i"; done

# CD-ing
alias 'finn=cd /Users/frerodla/finn/iad/trunk'
alias 'fjalar=cd /Users/frerodla/finn/search/search-fjalar'
alias 'repo=cd /Users/frerodla/finn/repo'
alias 'search=cd /Users/frerodla/finn/search'
alias 'felles=cd "/Volumes/Finn/Felles/"'
