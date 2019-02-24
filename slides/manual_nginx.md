<section>
<h3>Adding a Web Server</h3>
</section>

<section>
<h2>Run an Interactive container</h2>
<pre><code data-trim contenteditable>
docker run -p 80:80 -i -t ubuntu /bin/bash
# in the container
apt-get update
apt-get install nginx
service nginx start
# go look at your fancy new web site
#  in a browser at localhost:80
# don't exit the container
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>

<pre>
docker run <span data-fragment-index=1 class="fragment highlight-current-green">-p 80:80</span> <span data-fragment-index=2 class="fragment highlight-current-green">-i</span> <span data-fragment-index=3 class="fragment highlight-current-green">-t</span> <span>ubuntu</span> <span data-fragment-index=4 class="fragment highlight-current-green">/bin/bash</span>
</pre>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=1>
forward the host's port 80 to the container's port 80
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=2>
keep STDIN open (interactive mode)
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=3>
allocate a pseudo TTY
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=4>
run bash in the container
</p>
</div>

</section>

<section>
<h2>what did we just do?</h2>

<pre>
<span data-fragment-index=1 class="fragment highlight-current-green">apt-get update
apt-get install nginx</span>
<span data-fragment-index=2 class="fragment highlight-current-green">service nginx start</span>
</pre>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=1>
Install nginx
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=2>
Start nginx
</p>
</div>

</section>

<section>
<h2>well that works but do I need to to that every time?</h2>
</section>
