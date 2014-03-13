Docker Sickbeard
================

Builds a Docker image for Sickbeard based on Debian Jessie

```
docker build -t sickbeard . 
```

```
docker run -d -h *your_host_name* -v /*your_config_location*:/config  -v /*your_videos_location*:/data -p 8081:8081 sickbeard
```
