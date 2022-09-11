FROM alpine:latest

LABEL Maintainer="g0dzuki99 <chris@chaoscontrol.org>" \
      Description="Master server for Quake III Arena."

RUN adduser --system dpmaster

RUN apk update \
    && apk upgrade \
    && apk add curl g++ gcc make git sdl2-dev

RUN git clone https://github.com/bad-mushroom/dpmaster.git /dpmaster \
    && cd dpmaster/src \
    && make release

EXPOSE 27950/udp

USER dpmaster

ENTRYPOINT [ "/dpmaster/src/dpmaster" ]

CMD [ "--help" ]
