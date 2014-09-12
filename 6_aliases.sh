alias 'grep=grep --color=auto'
alias 'egrep=egrep --color=auto'
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
alias 'latest=tail -F ~/bin/log/latest'
alias 'less=less -Mi'
alias 'mvn=mvn -T 1C'
alias 'mvnsd=mvn -T 1C -DdownloadSources=true -DdownloadJavadocs=true'
alias 'mci=mvn -T 1C clean install'
alias 'md=mkdir'
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
alias update_locate='sudo /usr/libexec/locate.updatedb'
alias check_net="ping vg.no | awk -F = {'print \$4'}"

# FINN-ing
alias 'gits=cd ~/finn/search && for i in `ls`; do echo "----CHECKING $i----"; cd $i; git s; cd ..; done'
alias 'gitu=cd ~/finn/search && for i in `ls`; do echo "----UPDATING $i----"; cd $i; git pull; cd ..; done'
# courteously of @gardleopard
alias 'supergit=git pull && git add -A && git commit -m "supercommit from fmr `date +%s`" && git push -f'

# LS-ing
alias 'ls=ls -h'
alias 'l=ls -alF'
alias 'lt=ls -ltr'

# SSH-ing
for i in `grep "^Host" ~/.ssh/config | grep -v "Host \*" | awk '{print $2, $3, $4, $5, $6, $7, $8}'`; do alias $i="ssh $i"; done

# CD-ing
alias 'finn=cd /Users/frerodla/finn/iad/iad'
alias 'fjalar=cd /Users/frerodla/finn/search/search-fjalar'
alias 'repo=cd /Users/frerodla/finn/repo'
alias 'search=cd /Users/frerodla/finn/search'
alias 'felles=cd "/Volumes/Finn/Felles/"'

alias 'u=rod /Users/fmr/bin/ferdig/undo'

# RODLAND
alias stop_rd='sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -deactivate -configure -access -off'
alias start_rd='sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -allowAccessFor -users fmr -access -on -all'
alias maillog='tail -f /var/log/mail.log /var/log/system.log'
alias dwp='diff -w -r ~/wp/wp-content/themes/autofocuspro_2.0.6_orig/ ~/wp/wp-content/themes/autofocuspro_2.0.6_fmr_mod/'


alias push='ssh mod05 tail -F "/iad/finn/search-pushnotifier/logs/search-pushnotifier.log"'
alias push_mon='ssh mod05 tail -F "/iad/finn/search-pushnotifier/logs/search-pushnotifier.log | grep --line-buffered monitor"'
alias alert='ssh mod05 tail -F "/iad/finn/search-alertserver/logs/alertserver.log"'
alias alert_mon='ssh mod05 tail -F "/iad/finn/search-alertserver/logs/alertserver-monitor.log"'
alias email='ssh internalapi1 "grep REP /iad/finn/search-emailsender/logs/search-emailsender.log"'

alias top='htop -d 2 --sort-key PERCENT_CPU'
alias visualvm='/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home/bin/jvisualvm'
alias "jmx_push=ps auxwwwww | grep D61000 | grep -v grep | awk {'print \$2'} | xargs kill; ssh -f -N -D61000 mod05; jconsole -J-DsocksProxyHost=localhost -J-DsocksProxyPort=61000 localhost:27565"
alias "jmx_alert=ps auxwwwww | grep D61000 | grep -v grep | awk {'print \$2'} | xargs kill; ssh -f -N -D61000 mod05; jconsole -J-DsocksProxyHost=localhost -J-DsocksProxyPort=61000 localhost:27561"
