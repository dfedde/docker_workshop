<section>
<h3>Stopping and removing a container</h3>
</section>

<section>
<h2>stop your container</h2>
<pre><code data-trim contenteditable>
docker ps -a
docker stop $(docker ps -lq)
docker rm  container_name
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>

<pre>
docker ps <span data-fragment-index=1 class="fragment highlight-current-green">-a</span>
<span data-fragment-index=2 class="fragment highlight-current-green">docker stop</span> $(docker ps -lq)
<span data-fragment-index=3 class="fragment highlight-current-green">docker rm</span> container_name
</pre>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=1>
list all containers even ones that are not currently running
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=2>
stop one or more running contanier
</p>
</div>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=3>
remove one or more images
</p>
</div>

</section>

<section>
<h2 class="fragment">I want to share my awesome new image</h2>
</section>
