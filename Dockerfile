FROM itzg/minecraft-server
COPY . /data
EXPOSE 25565 8123 19132/udp
CMD [ "/start" ]