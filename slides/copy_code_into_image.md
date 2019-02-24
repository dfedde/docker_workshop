<h2 style="position: relative; bottom: 430px;">Lab 12</h2> <a class="done-button" onclick="completeLab(12)">I'm Done</a>
<section>
<h3>copy that</h3>
</section>

<section>
<h2>the copy command</h2>
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
COPY css/       /var/www/css
COPY js/        /var/www/js
COPY lib/       /var/www/lib
COPY plugin/    /var/www/plugin
COPY index.html /var/www/

CMD ["nginx"]

EXPOSE 80
</code></pre>
<pre><code data-trim contenteditable>
# create a Dockerfile
docker build -t yourname/dockerclass:byfile .
docker run -p 80:80 -d yourname/dockerclass
# go checkout your web site http://localhost
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>
<ul>
<li class="fragment">
copy a file from the host to the image
<pre><code data-trim contenteditable>
COPY index.html /var/www/
</code></pre>
</li>
</ul>
</section>

<section>
<h2>this works but what if we don't want our code in the image</h2>
</section>
