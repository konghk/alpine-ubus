FROM konghk/alpine_cross_sdk:2018_0306

# Run following as 'theuser'
USER theuser

RUN sudo apk update
RUN sudo apk upgrade

COPY ./build-ubus.sh /home/theuser/build-ubus.sh

CMD ["/bin/sh"]

