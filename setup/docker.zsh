
echo "\n<<< Starting Docker Setup >>>\n"

# Compose is now a Docker plugin. For Docker to find this plugin, symlink it:
mkdir -p ~/.docker/cli-plugins
ln -sfn /usr/local/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose
