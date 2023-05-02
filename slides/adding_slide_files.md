<section>
<h3>add this presentation to the container</h3>
</section>

<section>
<h2>add these files to your container</h2>
<pre><code data-trim contenteditable>
docker run -i -t -p 80:80 yourname/dockerclass:byhand /bin/bash
# in the container
apt-get install git
cd /var/www
wget https://github.com/dfedde/docker_workshop/releases/download/1.0.1/docker-workshop.tar.gz
tar -xvzf docker_workshop.tar.gz
rm -rf docker_workshop.tar.gz
cp Sitefile /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default
nginx
#look at your new site in the browser
exit
docker ps -l
# get the name from of the container
docker commit `docker ps -lq` yourname/dockerclass
docker run -d -P yourname/dockerclass service nginx start
#look at your new site in the browser
docker images
docker tag imagesname yourname/dockerclass:byhand
docker ps -l
</code></pre>
</section>
<section>
<h2>what did we just do?</h2>
<ul>
<li class="fragment">
we used and committed the dockerclass repository
<pre class="fragment"><code data-trim contenteditable>
yourname/dockerclass
</code></pre>
</li>
</ul>
</section>

<section>
<h2>lets look at all the containers we have piling up</h2>
</section>

