<h2 style="position: relative; bottom: 430px;">Lab 13</h2>

<section>
<h3>using volumes</h3>
</section>

<section>
<h2>use a named volume</h2>
<pre><code data-trim contenteditable>
FROM ubuntu:14.10

RUN \
apt-get update && \
apt-get install -y nginx && \
rm -rf /var/lib/apt/lists/* && \
echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
chown -R www-data:www-data /var/lib/nginx

RUN rm /etc/nginx/sites-enabled/default

COPY Sitefile /etc/nginx/sites-enabled/

CMD ["nginx"]

EXPOSE 80
</code></pre>
<pre><code data-trim contenteditable>
# create a Dockerfile
docker build -t yourname/dockerclass:byfile .
docker run -d -p 80:80 -v $(pwd):/var/www yourname/dockerclass:byfile
# go checkout your web site http://localhost
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>
<ul>
<li class="fragment">
link the local directory in the container
<pre><code data-trim contenteditable>
-v $(pwd):/var/www yourname/dockerclass:byfile
</code></pre>
</li>
<li class="fragment">
volumes don't get deleted when you remove a container
</li>
</ul>
</section>

<section>
<h2>but this relies on every host having the same file structure</h2>
</section>
