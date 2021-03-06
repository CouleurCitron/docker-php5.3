cp /var/lib/boot2docker/docker-compose /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

mkdir /var/www
mount -t vboxsf -o uid=33,gid=33 www /var/www

mkdir /var/raphael
mount -t vboxsf -o uid=33,gid=33 raphael /var/raphael

echo 'alias composer='\''docker run -ti --rm -v $(pwd):/app composer/composer'\''' >> /home/docker/.ashrc
echo 'cd /var/www' >> /home/docker/.ashrc
