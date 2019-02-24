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
