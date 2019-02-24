<h2 style="position: relative; bottom: 430px;">Lab 14</h2>

<section>
<h3>using unnamed volumes</h3>
</section>

<section>
<h2>use a unnamed volume</h2>
<pre><code data-trim contenteditable>
FROM ubuntu:14.10

RUN \
apt-get update && \
apt-get install -y nginx && \
rm -rf /var/lib/apt/lists/* && \
echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
chown -R www-data:www-data /var/lib/nginx

RUN rm /etc/nginx/sites-enabled/default

VOLUME ["/var/www"]

COPY Sitefile /etc/nginx/sites-enabled/

CMD ["nginx"]

EXPOSE 80
</code></pre>
<pre><code data-trim contenteditable>
# create a Dockerfile
docker build -t yourname/dockerclass:byfile .
docker run -p 80:80 -d yourname/dockerclass:byfile
# go checkout your web site http://localhost
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>
<ul>
<li class="fragment">
link the directory on the local file system in to the container
<pre><code data-trim contenteditable>
VOLUME ["/var/www"]
</code></pre>
</li>
</ul>
</section>

<section>
<h2>but this means your code is not in the image</h2>
</section>
