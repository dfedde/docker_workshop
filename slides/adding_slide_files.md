<h2 style="position: relative; bottom: 430px;">Lab 6</h2> <a class="done-button" onclick="completeLab(6)">I'm Done</a>
<section>
<h3>add this presentation to the container</h3>
</section>

<section>
<h2>add these files to your container</h2>
<pre><code data-trim contenteditable>
docker run -i -t -p 80:80 yourname/dockerclass:byhand /bin/bash
# in the container
apt-get install git
git clone https://github.com/dfedde/docker_workshop.git /var/www
cd /var/www
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

<section>
<h2 style="position: relative; bottom: 430px;">Lab 7</h2> <a class="done-button" onclick="completeLab(7)">I'm Done</a>
<section>
<h3>Stopping and removing a container</h3>
</section>

<section>
<h2>stop your container</h2>
<pre><code data-trim contenteditable>
docker stop `docker ps -lq`
docker ps -a
docker rm  container name
</code></pre>
</section>
<section>
<h2>what did we just do?</h2>
<ul>
<li class="fragment">
stops 1 or more given containers
<pre class="fragment"><code data-trim contenteditable>
docker stop
</code></pre>
</li>
<li class="fragment">
removes 1 or more given container
<pre class="fragment"><code data-trim contenteditable>
docker rm
</code></pre>
</li>
<li class="fragment">
return all the containers
<pre class="fragment"><code data-trim contenteditable>
docker ps -a
</code></pre>
</li>
</ul>
</section>
<section>
<h2 class="fragment">I want to share my awesome new image</h2>
</section>