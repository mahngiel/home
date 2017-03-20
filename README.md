```bash
docker stop $(docker ps -a -q) && 
docker rm $(docker ps -a -q) && 
yes | docker-compose rm
```

```bash
docker-compose stop && 
yes | docker-compose rm && 
docker-compose pull && 
docker-compose build && 
docker-compose create && 
docker-compose start
```

Add local ip addrs to bind to
```bash
ip addr add 10.0.0.5/8 dev <interface>
ip addr add 192.168.1.50/24 dev <interface>
```