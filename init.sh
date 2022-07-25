sudo rm /etc/nginx/sites-enabled/default
sudo cp /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled
sudo /etc/init.d/nginx restart
#sudo gunicorn -b 0.0.0.0:8080 hello:wsgi_app
