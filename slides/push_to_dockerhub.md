<h2 style="position: relative; bottom: 430px;">Lab 8</h2>

<section>
<h3>docker hub</h3>
</section>

<section>
<h2>push your image to docker hub</h2>
<p>create a<a href ="https://hub.docker.com/account/signup/docker"> dockerhub account</a></p>
<pre><code data-trim contenteditable>
docker login
docker push yourname/dockerclass
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>
<ul>
<li class="fragment">
login to the registry (default docker hub)
<pre class="fragment"><code data-trim contenteditable>
docker login
</code></pre>
</li>
<li class="fragment">
push the image to the registry
<pre class="fragment"><code data-trim contenteditable>
docker push yourname/dockerclass
</code></pre>
</li>
</ul>
</section>

<section>
<h2>now lets get that on the server</h2>
</section>
