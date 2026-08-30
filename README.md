# RPL-Danger Minecraft Server

Docker Compose configuration for the RPL-Danger Minecraft server.

## Server

- Paper 26.2 (latest stable Paper build)
- Java 25 via `itzg/minecraft-server:latest`
- 2 GB initial / 8 GB maximum heap
- Offline mode
- Automatic container restart and Minecraft health check

## Requirements

- Docker
- Docker Compose

## Start

```bash
git clone https://github.com/RPL-Danger/rpl-minecraft-server
cd rpl-minecraft-server
docker compose up -d
```

Check readiness and startup logs:

```bash
docker compose ps
docker compose logs -f mc
```

## Plugins

The plugin artifacts are declared in `docker-compose.yaml` and downloaded during
container startup. The current Minecraft 26.2 set is:

- Geyser 2.11.2 and Floodgate 2.2.5
- Veinminer 2.12.1
- Simple Voice Chat 2.6.21
- Chunky 1.5.3
- Pl3xMap 26.2-554 and Pl3xMarkers 0.8.3
- AxGraves 1.30.0
- PlaceholderAPI 2.12.3
- vanish 1.2.1
- GrimAC 2.3.74
- SkinsRestorer 15.12.5
- Emotecraft 3.4.0 build 165
- EssentialsX 2.22.1 development build 22 (required for Minecraft 26.2)
- InvSee++ 0.31.15
- Passky 3.3.0
- MultipleBedSpawn 1.12.1
- FancyHolograms 2.11.0 build 193
- CreeperRecover 1.1.0
- AdvancedServerList 5.9.0
- Timber 1.8.4

## Ports

- `25565/tcp`: Minecraft Java
- `19132/udp`: Geyser / Minecraft Bedrock
- `24454/udp`: Simple Voice Chat
- `8080/tcp`: Pl3xMap web server

> [!WARNING]
> The server intentionally runs with `ONLINE_MODE=false`. Anyone can claim an
> arbitrary Java username unless another authentication layer is configured.
