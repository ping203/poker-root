This directory contains not the firebase server itself, but all the poker code
which is executed in context of the firebase server.

You *don't* need to install firebase separately, it is fetched by the build.

== QUICK-START ==

mvn install # or mvn clean install
cd  ../uar
mvn firebase:run

You should be able to access the game at:

http://localhost:19999

There is no user registration at this point. Use any name, and the password
should be an integer > 1000.

In order to get some opponents, go to the bots at:

http://localhost:19090

The default values will create 100 bots, just press OK button.

You should see now within the lobby that tables are getting players. 

Join one or more tables and check the game.

=== PRODUCTION ===

(TODO)

 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00)
        at org.apache.mina.filter.codec.ProtocolCodecFilter.messageReceived(Prot
ocolCodecFilter.java:165)
        at org.apache.mina.common.support.AbstractIoFilterChain.callNextMessageR
eceived(AbstractIoFilterChain.java:299)
        at org.apache.mina.common.support.AbstractIoFilterChain.access$1100(Abst
ractIoFilterChain.java:53)
        at org.apache.mina.common.support.AbstractIoFilterChain$EntryImpl$1.mess
ageReceived(AbstractIoFilterChain.java:648)
        at org.apache.mina.filter.executor.ExecutorFilter.processEvent(ExecutorF
ilter.java:220)
        at org.apache.mina.filter.executor.ExecutorFilter$ProcessEventsRunnable.
run(ExecutorFilter.java:264)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.
java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor
.java:617)
        at org.apache.mina.util.NamePreservingRunnable.run(NamePreservingRunnabl
e.java:51)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.io.IOException: Packet too large  size=1195725856 from ip-addres
s:/0:0:0:0:0:0:0:1:58976
        at com.cubeia.firebase.server.gateway.comm.mina.protocol.StyxDecoder.doD
ecode(StyxDecoder.java:77)
        at org.apache.mina.filter.codec.CumulativeProtocolDecoder.decode(Cumulat
iveProtocolDecoder.java:133)
        at org.apache.mina.filter.codec.ProtocolCodecFilter.messageReceived(Prot
ocolCodecFilter.java:158)
        ... 9 more
16-02-08 00:43:45.615 INFO  SessionHandler - T[] P[] - Exception caught for sess
ion. Closing session: (SOCKET, R: /0:0:0:0:0:0:0:1:58979, L: /0:0:0:0:0:0:0:1:41
23, S: /0.0.0.0:4123)
org.apache.mina.filter.codec.ProtocolDecoderException: java.io.IOException: Pack
et too large  size=1195725856 from ip-address:/0:0:0:0:0:0:0:1:58979 (Hexdump: 4
7 45 54 20 2F 20 48 54 54 50 2F 31 2E 31 0D 0A 48 6F 73 74 3A 20 6C 6F 63 61 6C
68 6F 73 74 3A 34 31 32 33 0D 0A 43 6F 6E 6E 65 63 74 69 6F 6E 3A 20 6B 65 65 70
 2D 61 6C 69 76 65 0D 0A 43 61 63 68 65 2D 43 6F 6E 74 72 6F 6C 3A 20 6D 61 78 2
D 61 67 65 3D 30 0D 0A 55 70 67 72 61 64 65 2D 49 6E 73 65 63 75 72 65 2D 52 65
71 75 65 73 74 73 3A 20 31 0D 0A 55 73 65 72 2D 41 67 65 6E 74 3A 20 4D 6F 7A 69
 6C 6C 61 2F 35 2E 30 20 28 57 69 6E 64 6F 77 73 20 4E 54 20 36 2E 31 3B 20 57 4
F 57 36 34 29 20 41 70 70 6C 65 57 65 62 4B 69 74 2F 35 33 37 2E 33 36 20 28 4B
48 54 4D 4C 2C 20 6C 69 6B 65 20 47 65 63 6B 6F 29 20 43 68 72 6F 6D 65 2F 35 31
 2E 30 2E 32 37 30 34 2E 31 30 33 20 53 61 66 61 72 69 2F 35 33 37 2E 33 36 0D 0
A 41 63 63 65 70 74 3A 20 74 65 78 74 2F 68 74 6D 6C 2C 61 70 70 6C 69 63 61 74
69 6F 6E 2F 78 68 74 6D 6C 2B 78 6D 6C 2C 61 70 70 6C 69 63 61 74 69 6F 6E 2F 78
 6D 6C 3B 71 3D 30 2E 39 2C 69 6D 61 67 65 2F 77 65 62 70 2C 2A 2F 2A 3B 71 3D 3
0 2E 38 0D 0A 41 63 63 65 70 74 2D 45 6E 63 6F 64 69 6E 67 3A 20 67 7A 69 70 2C
20 64 65 66 6C 61 74 65 2C 20 73 64 63 68 0D 0A 41 63 63 65 70 74 2D 4C 61 6E 67
 75 61 67 65 3A 20 72 75 2D 52 55 2C 72 75 3B 71 3D 30 2E 38 2C 65 6E 2D 55 53 3
B 71 3D 30 2E 36 2C 65 6E 3B 71 3D 30 2E 34 0D 0A 0D 0A 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00)
        at org.apache.mina.filter.codec.ProtocolCodecFilter.messageReceived(Prot
ocolCodecFilter.java:165)
        at org.apache.mina.common.support.AbstractIoFilterChain.callNextMessageR
eceived(AbstractIoFilterChain.java:299)
        at org.apache.mina.common.support.AbstractIoFilterChain.access$1100(Abst
ractIoFilterChain.java:53)
        at org.apache.mina.common.support.AbstractIoFilterChain$EntryImpl$1.mess
ageReceived(AbstractIoFilterChain.java:648)
        at org.apache.mina.filter.executor.ExecutorFilter.processEvent(ExecutorF
ilter.java:220)
        at org.apache.mina.filter.executor.ExecutorFilter$ProcessEventsRunnable.
run(ExecutorFilter.java:264)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.
java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor
.java:617)
        at org.apache.mina.util.NamePreservingRunnable.run(NamePreservingRunnabl
e.java:51)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.io.IOException: Packet too large  size=1195725856 from ip-addres
s:/0:0:0:0:0:0:0:1:58979
        at com.cubeia.firebase.server.gateway.comm.mina.protocol.StyxDecoder.doD
ecode(StyxDecoder.java:77)
        at org.apache.mina.filter.codec.CumulativeProtocolDecoder.decode(Cumulat
iveProtocolDecoder.java:133)
        at org.apache.mina.filter.codec.ProtocolCodecFilter.messageReceived(Prot
ocolCodecFilter.java:158)
        ... 9 more
16-02-08 00:43:50.632 INFO  SessionHandler - T[] P[] - Exception caught for sess
ion. Closing session: (SOCKET, R: /0:0:0:0:0:0:0:1:58983, L: /0:0:0:0:0:0:0:1:41
23, S: /0.0.0.0:4123)
org.apache.mina.filter.codec.ProtocolDecoderException: java.io.IOException: Pack
et too large  size=1195725856 from ip-address:/0:0:0:0:0:0:0:1:58983 (Hexdump: 4
7 45 54 20 2F 20 48 54 54 50 2F 31 2E 31 0D 0A 48 6F 73 74 3A 20 6C 6F 63 61 6C
68 6F 73 74 3A 34 31 32 33 0D 0A 43 6F 6E 6E 65 63 74 69 6F 6E 3A 20 6B 65 65 70
 2D 61 6C 69 76 65 0D 0A 43 61 63 68 65 2D 43 6F 6E 74 72 6F 6C 3A 20 6D 61 78 2
D 61 67 65 3D 30 0D 0A 55 70 67 72 61 64 65 2D 49 6E 73 65 63 75 72 65 2D 52 65
71 75 65 73 74 73 3A 20 31 0D 0A 55 73 65 72 2D 41 67 65 6E 74 3A 20 4D 6F 7A 69
 6C 6C 61 2F 35 2E 30 20 28 57 69 6E 64 6F 77 73 20 4E 54 20 36 2E 31 3B 20 57 4
F 57 36 34 29 20 41 70 70 6C 65 57 65 62 4B 69 74 2F 35 33 37 2E 33 36 20 28 4B
48 54 4D 4C 2C 20 6C 69 6B 65 20 47 65 63 6B 6F 29 20 43 68 72 6F 6D 65 2F 35 31
 2E 30 2E 32 37 30 34 2E 31 30 33 20 53 61 66 61 72 69 2F 35 33 37 2E 33 36 0D 0
A 41 63 63 65 70 74 3A 20 74 65 78 74 2F 68 74 6D 6C 2C 61 70 70 6C 69 63 61 74
69 6F 6E 2F 78 68 74 6D 6C 2B 78 6D 6C 2C 61 70 70 6C 69 63 61 74 69 6F 6E 2F 78
 6D 6C 3B 71 3D 30 2E 39 2C 69 6D 61 67 65 2F 77 65 62 70 2C 2A 2F 2A 3B 71 3D 3
0 2E 38 0D 0A 41 63 63 65 70 74 2D 45 6E 63 6F 64 69 6E 67 3A 20 67 7A 69 70 2C
20 64 65 66 6C 61 74 65 2C 20 73 64 63 68 0D 0A 41 63 63 65 70 74 2D 4C 61 6E 67
 75 61 67 65 3A 20 72 75 2D 52 55 2C 72 75 3B 71 3D 30 2E 38 2C 65 6E 2D 55 53 3
B 71 3D 30 2E 36 2C 65 6E 3B 71 3D 30 2E 34 0D 0A 0D 0A 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 0
0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 00 00 00 00 00 00 00 00 00 00)
        at org.apache.mina.filter.codec.ProtocolCodecFilter.messageReceived(Prot
ocolCodecFilter.java:165)
        at org.apache.mina.common.support.AbstractIoFilterChain.callNextMessageR
eceived(AbstractIoFilterChain.java:299)
        at org.apache.mina.common.support.AbstractIoFilterChain.access$1100(Abst
ractIoFilterChain.java:53)
        at org.apache.mina.common.support.AbstractIoFilterChain$EntryImpl$1.mess
ageReceived(AbstractIoFilterChain.java:648)
        at org.apache.mina.filter.executor.ExecutorFilter.processEvent(ExecutorF
ilter.java:220)
        at org.apache.mina.filter.executor.ExecutorFilter$ProcessEventsRunnable.
run(ExecutorFilter.java:264)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.
java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor
.java:617)
        at org.apache.mina.util.NamePreservingRunnable.run(NamePreservingRunnabl
e.java:51)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.io.IOException: Packet too large  size=1195725856 from ip-addres
s:/0:0:0:0:0:0:0:1:58983
        at com.cubeia.firebase.server.gateway.comm.mina.protocol.StyxDecoder.doD
ecode(StyxDecoder.java:77)
        at org.apache.mina.filter.codec.CumulativeProtocolDecoder.decode(Cumulat
iveProtocolDecoder.java:133)
        at org.apache.mina.filter.codec.ProtocolCodecFilter.messageReceived(Prot
ocolCodecFilter.java:158)
        ... 9 more
16-02-08 00:44:00.009 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 00:45:00.036 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 00:45:04.466 WARN  HistoryPersister - T[] P[] - No tournament history s
ervice available, logging to file.
16-02-08 00:45:04.974 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 00:46:00.051 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 00:50:00.015 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 00:50:00.017 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 00:50:04.465 WARN  HistoryPersister - T[] P[] - No tournament history s
ervice available, logging to file.
16-02-08 00:50:04.968 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 00:51:00.027 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 00:53:04.473 WARN  HistoryPersister - T[] P[] - No tournament history s
ervice available, logging to file.
16-02-08 00:53:04.976 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 00:54:00.005 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 00:55:00.012 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 00:55:00.031 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 00:55:04.473 WARN  HistoryPersister - T[] P[] - No tournament history s
ervice available, logging to file.
16-02-08 00:55:04.980 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 00:56:00.019 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:00:00.013 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:00:00.014 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:00:04.485 WARN  HistoryPersister - T[] P[] - No tournament history s
ervice available, logging to file.
16-02-08 01:00:04.988 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:01:00.020 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:03:04.487 WARN  HistoryPersister - T[] P[] - No tournament history s
ervice available, logging to file.
16-02-08 01:03:04.989 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:04:00.007 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:05:00.012 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:05:00.029 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:05:04.490 WARN  HistoryPersister - T[] P[] - No tournament history s
ervice available, logging to file.
16-02-08 01:05:04.994 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:06:00.019 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:10:00.011 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:10:00.016 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:10:04.498 WARN  HistoryPersister - T[] P[] - No tournament history s
ervice available, logging to file.
16-02-08 01:10:05.003 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:11:00.018 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:13:04.503 WARN  HistoryPersister - T[] P[] - No tournament history s
ervice available, logging to file.
16-02-08 01:13:05.008 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:14:00.005 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:15:00.012 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:15:00.028 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:15:04.506 WARN  HistoryPersister - T[] P[] - No tournament history s
ervice available, logging to file.
16-02-08 01:15:05.010 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:16:00.018 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:20:00.012 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:20:00.017 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:20:04.514 WARN  HistoryPersister - T[] P[] - No tournament history s
ervice available, logging to file.
16-02-08 01:20:05.019 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:21:00.018 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:23:04.520 WARN  HistoryPersister - T[] P[] - No tournament history s
ervice available, logging to file.
16-02-08 01:23:05.027 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:24:00.005 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:25:00.012 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:25:00.029 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:25:04.521 WARN  HistoryPersister - T[] P[] - No tournament history s
ervice available, logging to file.
16-02-08 01:25:05.026 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
16-02-08 01:26:00.019 WARN  HistoryPersister - T[] P[0] - No tournament history
service available, logging to file.
