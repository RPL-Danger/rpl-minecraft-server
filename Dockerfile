FROM itzg/minecraft-server
COPY . /data
EXPOSE 25565 8123 19132/udp
COPY . /data
CMD ["/bin/sh", "-c", "cp -rn /defaults/* /data/ && exec /start"]