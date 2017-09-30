if [ "$INSTALL_REDIS" == "true" ]; then
  coreo_dir="$(pwd)"

  wget http://download.redis.io/redis-stable.tar.gz
  tar xvzf redis-stable.tar.gz

  cd redis-stable
  make
  cp src/redis-server /usr/bin/
  cp src/redis-cli /usr/bin/
  cd $coreo_dir
fi
