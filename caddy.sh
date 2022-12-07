echo "https://hub.docker.com/_/caddy"

docker run -d -p 80:80 -p 443:443 -p 443:443/udp \
    -v /site:/srv \
    -v caddy_data:/data \
    -v caddy_config:/config \
    caddy caddy file-server --domain example.com

caddy_container_id=$(docker ps | grep caddy | awk '{print $1;}')
docker exec -w /etc/caddy $caddy_container_id caddy reload
