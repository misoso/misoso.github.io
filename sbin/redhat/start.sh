#!/bin/bash

cd $(dirname $0)
cd ../..

[ -d /etc/supervisor/conf.d/ ] || (
  sudo yum install -y supervisor
  sudo sed -i "s/minfds=\w*/minfds=65535/" /etc/supervisord.conf
  sudo sed -i "s/minprocs=\w*/minprocs=4096/" /etc/supervisord.conf
  sudo systemctl restart supervisord
  sudo systemctl enable supervisord
  sudo systemctl status supervisord
)

[ -f /etc/supervisord.d/blog.conf ] || (
  sudo cp sbin/blog.conf /etc/supervisord.d/blog.conf
  sudo sed -i 's|^directory=.*|directory='`pwd`'|' /etc/supervisord.d/blog.conf
  sudo sed -i 's|^stdout_logfile=.*|stdout_logfile='`pwd`'/logs/log|' /etc/supervisord.d/blog.conf
  sudo sed -i 's|^stderr_logfile=.*|stderr_logfile='`pwd`'/logs/err|' /etc/supervisord.d/blog.conf
)

[ -d logs ] || mkdir logs
sudo supervisorctl update | grep blog || (
  sudo supervisorctl start blog | grep ERROR >/dev/null && \
  sudo supervisorctl status | grep blog
)

