# cloudflare-udp-ping
C tool from majek ( Cloudflare ) to perform UDP latency checks<br/>
imported from https://github.com/majek/dump/tree/master/how-to-receive-a-packet
# build tools
```
$ make
rm -f udpserver
rm -f udpclient
gcc -o udpserver udpserver.c net.c -pthread     -static
gcc -o udpclient udpclient.c net.c -pthread -lm -static
```
# run tool in local network
```
# ./udpserver
[*] Starting udpreceiver on 0.0.0.0:4321, polling=0, busy_poll=0, threads=1, reuseport=0

# ./udpclient 172.16.1.2:4321
[*] Sending to 172.16.1.2:4321, polling=0, src_port=65500
pps=  4995 avg=196.663us dev=60770.084us min=157.645us
pps=  4995 avg=197.286us dev=197.058us min=149.032us
pps=  4992 avg=197.184us dev=60788.340us min=175.929us
pps=  4989 avg=197.510us dev=60806.614us min=145.837us
pps=  5001 avg=197.522us dev=197.359us min=146.267us
pps=  5001 avg=196.695us dev=60733.618us min=147.184us
pps=  4993 avg=197.321us dev=60782.252us min=140.124us
pps=  4975 avg=197.951us dev=197.911us min=147.176us
pps=  4997 avg=197.262us dev=197.187us min=146.775us
pps=  4972 avg=198.336us dev=197.905us min=142.160us
pps=  4987 avg=196.990us dev=60818.806us min=169.687us
pps=  4978 avg=197.489us dev=60873.760us min=146.659us
pps=  5002 avg=198.589us dev=197.099us min=165.528us
pps=  4967 avg=197.709us dev=60941.129us min=161.037us
pps=  4960 avg=198.503us dev=198.502us min=153.535us
pps=  4994 avg=197.121us dev=60776.166us min=165.688us
pps=  4966 avg=198.346us dev=60947.262us min=143.286us
pps=  4980 avg=198.041us dev=197.793us min=132.840us
pps=  4968 avg=198.581us dev=198.244us min=148.303us
pps=  4996 avg=197.224us dev=60764.001us min=147.738us
```
# run tool in production network
```
# ./udpserver
[*] Starting udpreceiver on 0.0.0.0:4321, polling=0, busy_poll=0, threads=1, reuseport=0

# ./udpclient 172.16.1.2:4321
[*] Sending to 172.16.1.2:4321, polling=0, src_port=65500
pps= 57147 avg= 16.851us dev=  2.145us min=14.327us
pps= 58342 avg= 16.514us dev=  0.638us min=14.766us
pps= 58548 avg= 16.460us dev=  0.751us min=14.703us
pps= 58544 avg= 16.458us dev=  0.682us min=14.624us
pps= 54974 avg= 17.570us dev=  5.714us min=13.104us
pps= 57199 avg= 16.863us dev=  2.941us min=14.673us
pps= 58432 avg= 16.495us dev=  0.622us min=14.692us
pps= 58439 avg= 16.487us dev=  0.599us min=14.912us
pps= 59457 avg= 16.193us dev=  0.554us min=13.481us
pps= 62808 avg= 15.281us dev=  1.242us min=13.728us
pps= 62724 avg= 15.303us dev=  1.051us min=13.643us
pps= 62835 avg= 15.272us dev=  1.249us min=13.749us
pps= 62832 avg= 15.274us dev=  0.978us min=13.667us
pps= 62511 avg= 15.357us dev=  1.642us min=13.690us
pps= 62901 avg= 15.260us dev=  1.208us min=13.209us
pps= 63223 avg= 15.190us dev=  1.029us min=13.733us
pps= 63084 avg= 15.227us dev=  1.323us min=13.713us
pps= 63184 avg= 15.205us dev=  1.261us min=13.653us
pps= 63036 avg= 15.243us dev=  1.304us min=13.790us
pps= 63227 avg= 15.194us dev=  0.839us min=13.665us
```
