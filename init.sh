sudo unlink /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/hello
sudo ln -sf /home/box/web/etc/gunicorn-django.conf /etc/gunicorn.d/django
sudo /etc/init.d/gunicorn restart