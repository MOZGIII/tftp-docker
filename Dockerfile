FROM alpine
RUN apk add --no-cache tftp-hpa
WORKDIR /srv/tftp
EXPOSE 69/udp
CMD ["in.tftpd", "-L", "--secure", "/srv/tftp"]
