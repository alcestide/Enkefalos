<code>dmesg | grep tty </code>
<code>minicom -b 115200 -o -D /dev/ttyUSB0</code>
<code>screen /dev/ttyUSB0 115200</code>
<code>stty -F /dev/ttyS1 speed 115200 cs8 -cstopb -parenb -echo</code>
<code>od -x < /dev/hidraw0</code>
