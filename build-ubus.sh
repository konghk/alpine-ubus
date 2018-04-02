#!/bin/sh

set -e
set -x

sudo apk add json-c-dev
APKBUILD=/home/theuser/aports/unmaintained/libubox/APKBUILD abuild -r
sudo apk add --repository=/home/theuser/packages/unmaintained libubox
sudo apk add --repository=/home/theuser/packages/unmaintained libubox-dev

~/scripts/install-prebuilt-pkg.sh json-c-dev
CHOST=armhf APKBUILD=/home/theuser/aports/unmaintained/libubox/APKBUILD abuild -r
abuild-apk --update --root /home/theuser/sysroot-armhf --repository /home/theuser/packages/unmaintained add libubox
abuild-apk --update --root /home/theuser/sysroot-armhf --repository /home/theuser/packages/unmaintained add libubox-dev
CHOST=armhf APKBUILD=/home/theuser/aports/unmaintained/ubus/APKBUILD abuild -r

echo ubus packages are compiled successfully.
echo Please check ~/packages/unsupported/armhf directory.

