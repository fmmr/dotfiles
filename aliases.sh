
alias "a=awk {'print \$2'}"
alias 'd=du -hs . && df -h .'
alias 'dbexp=python ~/spambayes/spambayes/scripts/sb_dbexpimp.py -e -d ~/spambayes/fmr_db/hammie.db -f ~/spambayes/fmr_db/hammie.export'
alias 'df=df -h'
alias 'drobo=/Users/fmr/bin/rsync_iphoto_to_drobo.sh'
alias 'du=du -h'
alias 'em=emacs'
alias 'f=tail -f $HOME/procmail/watch_mail.log $HOME/procmail/.accept* $HOME/procmail/from'
alias 'fd=find . -type d -name '
alias 'ff=find . -type f -name '

alias 'gits=cd ~/finn/search && for i in `ls`; do echo "----CHECKING $i----"; cd $i; git s; cd ..; done'
alias 'gitu=cd ~/finn/search && for i in `ls`; do echo "----UPDATING $i----"; cd $i; git pull; cd ..; done'
alias 'idea=mci idea:idea -DdownloadSources=true -DdownloadJavadocs=true'
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

# SSH-ING
for i in `grep "^Host" ~/.ssh/config | grep -v "Host \*" | awk '{print $2, $3, $4, $5, $6, $7, $8}'`; do alias $i='ssh $i'; done
alias 'rod=ssh fmr@rodland.no'

# CD-ing
alias 'finn=cd /Users/frerodla/finn/iad/trunk'
alias 'fjalar=cd /Users/frerodla/finn/search/search-fjalar'
alias 'repo=cd /Users/frerodla/finn/repo'
alias 'search=cd /Users/frerodla/finn/search'
alias 'felles=cd "/Volumes/Finn/Felles/"'

# old/doesn't work
# alias 'twit_dist=cd /Users/fmr/projects/twitter/twitterbot && mvn assembly:assembly && rsync -avz ./ rod:/home/fmr/twitter/twitterbot/'
# alias rrod="rsync -zav -e \"ssh -c arcfour -o Compression=no -x\" --progress --exclude 'iPod Photo Cache' --exclude 'Thumb*Segment.data' '$DROBO' rodland.no:/backup/bilder/_IPHOTO"
# alias rroddel=""/Users/fmr/bin/rsync_iphoto_to_drobo.sh --delete && /Users/fmr/bin/rsync_drobo_to_rod.sh --delete"
# alias rroddelip="rsync -zav -e \"ssh -c arcfour -o Compression=no -x\" --progress --delete --exclude 'iPod Photo Cache' --exclude 'Thumb*Segment.data' '$IPHOTO' rodland.no:/backup/bilder/_IPHOTO"
# alias rrodip="rsync -zav -e \"ssh -c arcfour -o Compression=no -x\" --progress --exclude 'iPod Photo Cache' --exclude 'Thumb*Segment.data' '$IPHOTO' rodland.no:/backup/bilder/_IPHOTO"
# alias rrodtest="rsync -nzav -e \"ssh -c arcfour -o Compression=no -x\" --progress --delete --exclude 'iPod Photo Cache' --exclude 'Thumb*Segment.data' '$DROBO' rodland.no:/backup/bilder/_IPHOTO"
# alias rrodtestip="rsync -nzav -e \"ssh -c arcfour -o Compression=no -x\" --progress --delete --exclude 'iPod Photo Cache' --exclude 'Thumb*Segment.data' '$IPHOTO' rodland.no:/backup/bilder/_IPHOTO"
#alias 'dbimp=DATE=`date +"%Y%m%d"`; DB="/home/fmr/spambayes/fmr_db/hammie_$DATE.db"; sb_dbexpimp.py -i -d $DB -f /home/fmr/hammie.export && chmod 644 $DB'
#alias 'rfilm=rsync -zav --progress --delete /Volumes/FMR_DATA/FILM/ /Volumes/FILM/'
#alias 'rmus=rsync -n -zav --delete --progress /Volumes/FMR_DATA/MP3/ /Volumes/MP3-1/ --exclude '.DS_Store''
#alias 'rmus=rsync -zav -e \"ssh -c arcfour -o Compression=no -x\" --progress /Volumes/FMR_DATA/MP3/ fmr@10.0.12.50:/mnt/data/mp3/  --exclude '.DS_Store''
#alias 'rpict=rsync -n -zav --progress /Volumes/FMR_DATA/IPHOTO/iPhoto\ Library/ /Volumes/BILDER/_IPHOTO/ --exclude 'Caches/*' --exclude '.DS_Store' --exclude 'iPod Photo Cache' --exclude 'Auto Import' --exclude 'Thumb*Segment.data' '
#alias 'rpict=rsync -zav -e \"ssh -c arcfour -o Compression=no -x\" --progress --delete /Volumes/FMR_DATA/IPHOTO/iPhoto\ Library/ fmr@10.0.12.50:/mnt/data/bilder/_IPHOTO --exclude 'Caches/*' --exclude '.DS_Store' --exclude 'iPod Photo Cache' --exclude 'Auto Import' --exclude 'Thumb*Segment.data' '
#alias 'rroddel=rsync -zav -e \"ssh -c arcfour -o Compression=no -x\" --progress --delete --exclude 'iPod Photo Cache' --exclude 'Thumb*Segment.data' '$DROBO' rodland.no:/backup/bilder/_IPHOTO'
#alias check_pending="grep sb-score ~/procmail/pending/* | awk -F : '{print \$2,\$3,\$1}' | sort -r"
#alias 'get_kp=scp rod:/home/fmr/public_html/db.kdb ~/Documents/keepass/db.kdb'
#alias 'put_kp=echo -n "pwd for maisen: "; scp ~/Dropbox/kp/Database.kdb maisen:/Users/fmr/Documents/keepass/Database.kdb'
