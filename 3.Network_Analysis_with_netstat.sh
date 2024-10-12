debian@debian12:~/Downloads/Wireshark_Linux$ su -
Password: 
root@debian12:~# netstat -at
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State      
tcp        0      0 localhost:ipp           0.0.0.0:*               LISTEN     
tcp        0      0 0.0.0.0:ssh             0.0.0.0:*               LISTEN     
tcp        0      0 debian12:43744          sof04s06-in-f3.1e:https ESTABLISHED
tcp        0      0 debian12:36890          sof04s07-in-f3.1e:https ESTABLISHED
tcp        0      0 debian12:59016          sof04s05-in-f3.1e1:http TIME_WAIT  
tcp        0      0 debian12:58276          20.189.173.4:https      ESTABLISHED
tcp        0      0 debian12:48496          sof04s07-in-f3.1e:https ESTABLISHED
tcp        0      0 debian12:35016          93.243.107.34.bc.:https ESTABLISHED
tcp        0      0 debian12:50350          sof04s06-in-f1.1e:https ESTABLISHED
tcp        0      0 debian12:50338          sof04s06-in-f1.1e:https ESTABLISHED
tcp        0      0 debian12:57074          152.199.19.160:https    ESTABLISHED
tcp        0      0 debian12:43730          sof04s06-in-f3.1e:https ESTABLISHED
tcp        0      0 debian12:39490          sof02s44-in-f5.1e:https ESTABLISHED
tcp        0      0 debian12:53136          lb-140-82-114-26-:https ESTABLISHED
tcp        0      0 debian12:59640          sof04s07-in-f5.1e:https ESTABLISHED
tcp6       0      0 localhost:ipp           [::]:*                  LISTEN     
root@debian12:~# netstat -at .,
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State      
tcp        0      0 localhost:ipp           0.0.0.0:*               LISTEN     
tcp        0      0 0.0.0.0:ssh             0.0.0.0:*               LISTEN     
tcp        0      0 debian12:43744          sof04s06-in-f3.1e:https TIME_WAIT  
tcp        0      0 debian12:36890          sof04s07-in-f3.1e:https TIME_WAIT  
tcp        0      0 debian12:58276          20.189.173.4:https      ESTABLISHED
tcp        0      0 debian12:48496          sof04s07-in-f3.1e:https TIME_WAIT  
tcp        0      0 debian12:35016          93.243.107.34.bc.:https ESTABLISHED
tcp        0      0 debian12:50350          sof04s06-in-f1.1e:https TIME_WAIT  
tcp        0      0 debian12:50338          sof04s06-in-f1.1e:https TIME_WAIT  
tcp        0      0 debian12:43730          sof04s06-in-f3.1e:https TIME_WAIT  
tcp        0      0 debian12:39490          sof02s44-in-f5.1e:https TIME_WAIT  
tcp        0      0 debian12:53136          lb-140-82-114-26-:https ESTABLISHED
tcp        0      0 debian12:59640          sof04s07-in-f5.1e:https ESTABLISHED
tcp6       0      0 localhost:ipp           [::]:*                  LISTEN     
root@debian12:~# 
root@debian12:~# 
root@debian12:~# netstat -at | grep 'ESTABLISHED'
tcp        0      0 debian12:41878          93.243.107.34.bc.:https ESTABLISHED
tcp        0      0 debian12:41886          93.243.107.34.bc.:https ESTABLISHED
tcp        0      0 debian12:49588          152.199.19.160:https    ESTABLISHED
tcp        0      0 debian12:53136          lb-140-82-114-26-:https ESTABLISHED
root@debian12:~# netstat -tulnp | grep 'LISTEN'
tcp        0      0 127.0.0.1:631           0.0.0.0:*               LISTEN      715/cupsd           
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      736/sshd: /usr/sbin 
tcp6       0      0 ::1:631                 :::*                    LISTEN      715/cupsd           
root@debian12:~# netstat -au
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State      
udp        0      0 0.0.0.0:39668           0.0.0.0:*                          
udp        0      0 0.0.0.0:56514           0.0.0.0:*                          
udp        0      0 0.0.0.0:mdns            0.0.0.0:*                          
udp        0      0 debian12:bootpc         _gateway:bootps         ESTABLISHED
udp6       0      0 [::]:mdns               [::]:*                             
udp6       0      0 [::]:50752              [::]:*                             
root@debian12:~# netstat -an | grep '192.168.0.10'
root@debian12:~# netstat -an | grep ':443'
tcp        0      0 10.0.2.15:38372         142.251.141.37:443      ESTABLISHED
tcp        0      0 10.0.2.15:41886         34.107.243.93:443       ESTABLISHED
tcp        0      0 10.0.2.15:53136         140.82.114.26:443       ESTABLISHED
root@debian12:~# watch -n 3 netstat -at

[1]+  Stopped                 watch -n 3 netstat -at
root@debian12:~# netstat -at | grep 'ESTABLISHED' > established_connections.txt
root@debian12:~# netstat -g
IPv6/IPv4 Group Memberships
Interface       RefCnt Group
--------------- ------ ---------------------
lo              1      mdns.mcast.net
lo              1      all-systems.mcast.net
enp0s3          1      mdns.mcast.net
enp0s3          1      all-systems.mcast.net
lo              1      ff02::fb
lo              1      ip6-allnodes
lo              1      ff01::1
enp0s3          1      ff02::1:ff92:f164
enp0s3          1      ff02::fb
enp0s3          1      ip6-allnodes
enp0s3          1      ff01::1
root@debian12:~# netstat -at | grep 'ESTABLISHED | wc -l
> 
> 
> "
> 
> 
> 
> 
> 
> sr
> uythlyj
> ]]]]
> }{LKJHJKL
> 
> 
> 
> ""@@#
> stop
> 
> 
> ^C
root@debian12:~#  netstat -at | grep 'ESTABLISHED' | wc -l
6