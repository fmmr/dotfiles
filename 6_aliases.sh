alias 'histgrep=history | grep'
alias 'tar=gtar'
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


for v in "${JAVA_VERSIONS[@]}"; do
  if printf "%s\n" "$JAVA_HOME_LIST" | grep -qE "^[[:space:]]+$v([[:space:]]|\.)"; then
    alias "j${v}"="export JAVA_HOME=\$(/usr/libexec/java_home -v $v)"
  fi
done
if printf "%s\n" "$JAVA_HOME_LIST" | grep -qE "^[[:space:]]+1\.8([[:space:]]|\.)"; then
  alias j8='j1.8'
fi

alias 'kff=killall firefox firefox-bin'
alias 'latest=tail -F ~/bin/log/latest'
alias 'less=less -Mi'
alias 'mvn=mvn -T 1C'
alias 'mvnsd=mvn -T 1C -DdownloadSources=true -DdownloadJavadocs=true'
alias 'mci=mvn -T 1C clean install'
alias 'md=mkdir'
alias 'nano=nano -w'
# alias 'ns=nslookup -sil'
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
if [ -f "$HOME/.ssh/config" ]; then
    for i in $(grep "^Host" "$HOME/.ssh/config" | grep -v "Host \*" | awk '{for (n=2;n<=NF;n++) print $n}'); do
        alias "$i"="ssh $i"
    done
fi

# CD-ing
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

alias dash='ssh internalapi1 tail -F /iad/finn/search-dash/logs/search-dash.log'
alias push='ssh alert1 tail -F "/iad/finn/search-pushnotifier/logs/search-pushnotifier.log"'
alias push_mon='ssh mod05 tail -F "/iad/finn/search-pushnotifier/logs/search-pushnotifier.log | grep --line-buffered monitor"'
alias alert='ssh mod05 tail -F "/iad/finn/search-alertserver/logs/alertserver.log"'
alias alert_mon='ssh mod05 tail -F "/iad/finn/search-alertserver/logs/alertserver-monitor.log"'
alias email='ssh internalapi1 "grep REP /iad/finn/search-emailsender/logs/search-emailsender.log"'

alias top='htop -d 2 --sort-key PERCENT_CPU'
alias visualvm='/Library/Java/JavaVirtualMachines/jdk1.8.0_71.jdk/Contents/Home/bin/jvisualvm'
alias jmx_push="jmx_tunnel.sh -s alert1-prod1.z01.finn.no -p 27565"
alias jmx_api1="$HOME/bin/jmx_tunnel.sh -p 28450 -s api1.finn.no"
alias jmx_alert11="$HOME/bin/jmx_tunnel.sh -p 27561 -s alert1-prod1.z01.finn.no"
alias jmx_alert21="$HOME/bin/jmx_tunnel.sh -p 27561 -s alert2-prod1.z01.finn.no"
alias jmx_alert12="$HOME/bin/jmx_tunnel.sh -p 27561 -s alert1-prod2.z01.finn.no"
alias jmx_alert22="$HOME/bin/jmx_tunnel.sh -p 27561 -s alert2-prod2.z01.finn.no"
alias 'start_tail=ssh -l finn -t mod05.finn.no "nohup fmr/fmr_start_fill.sh"'
alias as='ssh -t mod05 "cd /iad/finn/search-alertserver/logs; bash"'
alias cas='ssh -t mod01 "/iad/common/apps/cassandra/bin/cqlsh cassandra01.finn.no 7613"'
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'

alias oc='sudo openconnect --juniper gate.schibsted.no'

alias alert_smoke='for h in alert12 alert21 alert22; do echo "running smoketest on $h"; ssh $h "iad finn search-alertserver smoketest --report-to-pipeline"; done; echo "running smoketest on $h"; ssh alert11 "iad finn search-pushnotifier smoketest --report-to-pipeline";'
alias tail_push='ssh alert11 tail -F /iad/finn/search-pushnotifier/logs/search-pushnotifier.log'
alias tail_dash='ssh internal tail -F /iad/finn/search-dash/logs/search-dash.log'
alias tail_push_mon='ssh alert11 tail -F /iad/finn/search-pushnotifier/logs/search-pushnotifier.log | grep --line-buffered monitor'
alias tail_front='dsh --file ~/.dsh/searchfront -M -r ssh -Mc -- tail -F /iad/finn/search-front/logs/search-front.log'
alias tail_alert='dsh --file ~/.dsh/alertserver -M -r ssh -Mc -- "tail -F /iad/finn/search-alertserver/logs/search-alertserver.log | egrep --line-buffered -v \"matched|monitor|SearchEvent|Got solrDoc\""'
alias tail_alert_mon='dsh --file ~/.dsh/alertserver -M -r ssh -Mc -- "tail -F /iad/finn/search-alertserver/logs/search-alertserver.log | grep --line-buffered monitor"'
alias user_gc_tail='dsh --file ~/.dsh/mod18 -M -r ssh -Mc -- "tail -F /iad/finn/user/logs/misc/normal.gc.log | grep --line-buffered Full"'
alias deploy_dash='cd ~/finn/tool/ops-utils/puppet; git pull; TAGS=search-dash DIFF=true bundle exec cap internalapi1.finn.no puppet:apply'
alias deploy_solr_master='cd ~/finn/tool/ops-utils/puppet; git pull; finn_env=prod DIFF=true bundle exec cap solradmin1-prod1.z01.finn.no solralert1501.ibm-d7.host.finntech.no solralert1500.ibm-d7.host.finntech.no solralert1502.ibm-d7.host.finntech.no puppet:apply'
alias kubetail='kubetail -b --jq "\"[\" + .[\"@timestamp\"] + \"] \" + .message" -z 2,7,8'
alias noping='sudo noping'
alias oping='sudo oping'
alias p='ping_host.sh'
alias p23='ping_host.sh r23'
alias p232="grep r23 /etc/hosts | awk {'print \$2'} | tr '\n' ' ' | sed 's/$/ localhost vg.no/' | xargs multiping 2>/dev/null"

# alias sshuttle_gcm='sshuttle -r kjell 10.216.0.0/16 10.218.0.0/16 10.219.16.0/24 10.219.17.0/24'
alias search_alerts="curl http://io-fiaas-prometheus-vma.obs.prod.finn.no:8080/api/v1/groups -s | jq '.data.groups[].alerting_rules[] | select(.labels.owner==\"search\")'"
alias tree="mvn dependency:tree"
alias m_cloud='watch -d /Users/fmr/bin/finn/misc_k8s/monitor_cloud.sh'
alias rub='scp /Users/fmr/finn/ghe/search-breadcrumb/src/test/rubik.html  coz7cgr90_zpikesgj@ssh.coz7cgr90.service.one:/webroots/r1098183/'
alias drimonscp='scp /Users/fmr/projects/drivhus/html/* coz7cgr90_zpikesgj@ssh.coz7cgr90.service.one:/webroots/r1098183/drimon/'
alias claude="/Users/fmr/.claude/local/claude"

alias pi="ssh pi"
alias pi_reboot='ssh pi "sudo reboot"'
alias dotsource='source $HOME/.dotfiles/0_dotfiles.sh'
