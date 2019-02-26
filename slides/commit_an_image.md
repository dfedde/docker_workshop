<section>
<h3>the one where you make a new image</h3>
</section>

<section>
<h2>commit your container</h2>

<pre><code data-trim contenteditable>
# in the container
echo "daemon off;" >> /etc/nginx/nginx.conf
exit
# out of the docker
docker ps -l
docker commit `docker ps -lq` yourname/dockerclass
docker run -d -P yourname/dockerclass service nginx start
docker ps
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>

<pre>
<span data-fragment-index=1 class="fragment highlight-current-green">echo "daemon off;" >> /etc/nginx/nginx.conf</span>
<span data-fragment-index=2 class="fragment highlight-current-green">exit</span>

<span data-fragment-index=3 class="fragment highlight-current-green">docker ps -l</span>
<span data-fragment-index=5 class="fragment highlight-current-green">docker commit</span> $(docker ps -l <span data-fragment-index=4 class="fragment highlight-current-green">-q</span>) yourname/dockerclass
<span data-fragment-index=7 class="fragment highlight-current-green">docker run <span data-fragment-index=8 class="fragment highlight-current-green">-d</span> -p 80:80 yourname/dockerclass service nginx start</span>
docker ps
</pre>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=1>
make sure that nginx runs in the forground
</p>
</div>
 
<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=2>
get out of thse container
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=3>
show the latest created container
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=4>
only print the sha of the image (quiet mode)
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=5>
commit a container to make it into a image
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=7>
run your newly created images
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=8>
Start the container in the background
</p>
</div>
</section>

<section>
<h2>cool!</h2>
<h2 class="fragment">I can have a image of nginx</h2>
<h2 class="fragment">but how can I keep versions of my images</h2>
</section>

