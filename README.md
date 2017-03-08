# docker-syncthing
Docker syncthing container. This setup contains a data container used to store
all of the syncthing folders will be persistently stored to the 'syncthing-data'
container. This allows the 'syncthing' container to be stopped, removed, and
upgraded without losing any settings or files.

# Starting the syncthing server and data containers
- clone this repository to your docker host.
- `docker-compose up -d`

# Configure syncthing
- Launch a browser to the syncthing admin gui: `http://<your_docker_host:8384`
- Configure the syncthing as usual: http://docs.syncthing.net/intro/getting-started.html#configuring
- The container is configured in read-only mode. You will need to set all of the
  sync folders to `/data/<some_sync_dir>`.
