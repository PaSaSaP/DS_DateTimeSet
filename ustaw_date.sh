#!/bin/zsh

BAUD=9600
DEVICE=/dev/tty.usbserial-11240
ESCAPE_FILE=escape.txt

SCRIPT=script_file.txt
rm -f $SCRIPT
DATE=$(date -v+5S +"%H %M %S %w %d %m %y")
cat <<EOF >${SCRIPT}
sleep 5
send G ${DATE}
sleep 1
print Set date to: ${DATE}
EOF
CAPTURE=capture.txt
rm -f ${CAPTURE}
sudo minicom -b ${BAUD} -D ${DEVICE} -C ${CAPTURE} -S ${SCRIPT} <${ESCAPE_FILE}
cat ${CAPTURE}

