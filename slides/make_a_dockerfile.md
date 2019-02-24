<h2 style="position: relative; bottom: 430px;">Lab 11</h2>

<section>
<h3>the docker file</h3>
</section>

<section>
<h2>build your image with a docker file</h2>
<h3><a href="https://gist.github.com/6b834c64ecfdf9b3974e">Dockerfile</a></h3>
<pre><code data-trim contenteditable>
FROM ubuntu:14.10

RUN \
apt-get update && \
apt-get install -y nginx && \
rm -rf /var/lib/apt/lists/* && \
echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
chown -R www-data:www-data /var/lib/nginx

CMD ["nginx"]

EXPOSE 80
</code></pre>

<pre><code data-trim contenteditable>
# create a Dockerfile
docker build -t yourname/dockerclass .
docker run -p 80:80 -d yourname/dockerclass
# go checkout your web site http://localhost
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>
<ul>
<li class="fragment">
build the new image from ubuntu 14.10
<pre><code data-trim contenteditable>
FROM ubuntu:14.10
</code></pre>
</li>
<li class="fragment">
run these commands on the new container
<pre><code data-trim contenteditable>
RUN \
apt-get update && \
apt-get install -y nginx && \
rm -rf /var/lib/apt/lists/* && \
echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
chown -R www-data:www-data /var/lib/nginx
</code></pre>
</li>
<li class="fragment">
run the nginx comand when you run the image
<pre><code data-trim contenteditable>
CMD ["nginx"]
</code></pre>
</li>
<li class="fragment">
expose port 80 to the host(the host must still bind this to a port)
<pre><code data-trim contenteditable>
EXPOSE 80
</code></pre>
</li>
<li class="fragment">
build the image from the docker file
<pre><code data-trim contenteditable>
docker build -t yourname/dockerclass .
</code></pre>
</li>
</ul>
</section>

<section>
<h2>now we can build a image on the fly but how do we get our data in there</h2>
</section>
