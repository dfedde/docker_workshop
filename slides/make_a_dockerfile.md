<section>
<h3>the docker file</h3>
</section>

<section>
<h2>build your image with a docker file</h2>
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
<pre>
<span data-fragment-index=1 class="fragment highlight-current-green">FROM ubuntu:14.10</span>

<span data-fragment-index=2 class="fragment highlight-current-green">RUN \
apt-get update && \
apt-get install -y nginx && \
rm -rf /var/lib/apt/lists/* && \
echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
chown -R www-data:www-data /var/lib/nginx</span>

<span data-fragment-index=3 class="fragment highlight-current-green">CMD ["nginx"]</span>

<span data-fragment-index=4 class="fragment highlight-current-green">EXPOSE 80</span>
</pre>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=1>
The image that this new image will be made from
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=2>
Run this stuff in the container (same commands we ran before)
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=3>
The default command to run when the image is run
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=4>
Tell docker port 80 will have somthing on it. 
</p>
</div>
</section>

<section>
<h2>Do I realy have to do the install, hasn't anyone already done this </h2>
</section>
