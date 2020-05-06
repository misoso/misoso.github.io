#!/bin/bash

cd $(dirname $0)
cd ../..

[ -d /etc/supervisor/conf.d/ ] || (
  sudo apt-get install supervisor
  sudo sed -i "s/minfds=\w*/minfds=65535/" /etc/supervisor/supervisord.conf
  sudo sed -i "s/minprocs=\w*/minprocs=4096/" /etc/supervisor/supervisord.conf
  sudo systemctl restart supervisor
  sudo systemctl enable supervisor
  sudo systemctl status supervisor
)

[ -f /etc/supervisor/conf.d/blog.conf ] || (
  sudo cp sbin/blog.conf /etc/supervisor/conf.d/blog.conf
  sudo sed -i 's|^directory=.*|directory='`pwd`'|' /etc/supervisor/conf.d/blog.conf
  sudo sed -i 's|^stdout_logfile=.*|stdout_logfile='`pwd`'/logs/log|' /etc/supervisor/conf.d/blog.conf
  sudo sed -i 's|^stderr_logfile=.*|stderr_logfile='`pwd`'/logs/err|' /etc/supervisor/conf.d/blog.conf
)

[ -d logs ] || mkdir logs
sudo supervisorctl update | grep blog || sudo supervisorctl restart blog
