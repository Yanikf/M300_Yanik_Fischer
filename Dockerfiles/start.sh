docker run -itd -p81:80 -p444:443 -p2000:19999 -v ~/webserveryanik:/var/www/html -c 1024 -m 512000000 webserveryanik:6.0
docker run -d -p 3050:3000 grafana/grafana:6.7.3
docker run -d -p 9090:9090 prom/prometheus
docker exec (Container Name) bash -c 'while true; do echo "i.O"; sleep 2; done;'
