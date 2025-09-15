# khởi động SSHD ở foreground
exec /usr/sbin/sshd -D

# #in docker container
# apt update
# apt upgrade -y
# apt install -y tigervnc-standalone-server
# apt install -y xterm 
# vncpasswd
# apt install -y xfce4
# vncserver :1 -geometry 1280x800 -depth 24 -xstartup /usr/bin/startxfce4 -localhost no