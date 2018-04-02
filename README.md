# alpine-ubus

Create Docker Image
-------------------
```
% docker build -t alpine-ubus .
```

Set Up Container and Build Packages
-----------------------------------
```
% docker run -it alpine-ubus
~ $ ./build-ubus.sh
```
The resulting cross compiled pacakges are available at `/home/theuser/packages/unsupported/armhf` directory.
```
~ $ ls -l /home/theuser/packages/unmaintained/armhf/
total 84
-rw-r--r--    1 theuser  abuild        1053 Apr  2 20:11 APKINDEX.tar.gz
-rw-r--r--    1 theuser  abuild       28535 Apr  2 20:11 libubox-0_git20150921-r1.apk
-rw-r--r--    1 theuser  abuild       16811 Apr  2 20:11 libubox-dev-0_git20150921-r1.apk
-rw-r--r--    1 theuser  abuild       22376 Apr  2 20:11 ubus-0_git20150919-r0.apk
-rw-r--r--    1 theuser  abuild        4596 Apr  2 20:11 ubus-dev-0_git20150919-r0.apk
~ $ 
```
