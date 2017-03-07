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
