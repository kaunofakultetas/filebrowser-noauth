# Filebrowser NoAuth

Custom Docker image for [Filebrowser](https://filebrowser.org/) with authentication disabled, dark theme, and VU KNF branding. Designed to run behind a reverse proxy at `/filebrowser`.

Based on Docker image `filebrowser/filebrowser`.

<br/>

## Quick start

```bash
sudo docker build -t filebrowser-noauth .
sudo docker run -d -p 8080:80 -v /path/to/data:/data filebrowser-noauth
```

Open `http://localhost:8080/filebrowser`.

<br/>

## Docker Hub

Published to `vuknf/filebrowser-noauth` on Docker Hub.
