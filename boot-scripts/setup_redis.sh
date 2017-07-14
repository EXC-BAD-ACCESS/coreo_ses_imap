if [ $INSTALL_REDIS == "true" ]; then
  echo "redis-server --daemonize yes"
  redis-server --daemonize yes
fi
