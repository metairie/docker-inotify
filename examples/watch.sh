
# run 
# ./watch.sh >/dev/null 2>&1 &

# monitor 
# tail -f /tmp/watchlog.log

mkdir /tmp/incoming

watchdir=/tmp/incoming
logfile=/tmp/watchlog.log
while : ; do
        inotifywait $watchdir|while read path action file; do
                ts=$(date +"%C%y%m%d%H%M%S")
                echo "$ts :: file: $file :: $action :: $path">>$logfile
        done
done
exit 0