debian@debian12:~/Downloads/Wireshark_Linux$ su -
Password: 
root@debian12:~# sudo apt update && sudo apt install net-tools
Hit:1 http://deb.debian.org/debian bookworm InRelease
Hit:2 http://deb.debian.org/debian bookworm-updates InRelease
Hit:3 http://security.debian.org/debian-security bookworm-security InRelease
Hit:4 https://packages.microsoft.com/repos/code stable InRelease
Reading package lists... Done                    
Building dependency tree... Done
Reading state information... Done
3 packages can be upgraded. Run 'apt list --upgradable' to see them.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
net-tools is already the newest version (2.10-0.1).
0 upgraded, 0 newly installed, 0 to remove and 3 not upgraded.
root@debian12:~# netstat -t
Active Internet connections (w/o servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State      
tcp        0      0 debian12:58642          20.50.80.214:https      ESTABLISHED
tcp        0      0 debian12:50646          dns.google:https        TIME_WAIT  
tcp        0      0 debian12:49524          lb-140-82-113-26-:https ESTABLISHED
tcp        0      0 debian12:35016          93.243.107.34.bc.:https ESTABLISHED
tcp        0      0 debian12:56196          151.101.2.132:http      TIME_WAIT  
tcp        0      0 debian12:52108          151.101.194.132:http    TIME_WAIT  
tcp        0      0 debian12:56798          13.107.246.45:https     TIME_WAIT  
root@debian12:~# 