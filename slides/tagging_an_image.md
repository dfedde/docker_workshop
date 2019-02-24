<h2 style="position: relative; bottom: 430px;">Lab 5</h2> <a class="done-button" onclick="completeLab(5)">I'm Done</a>
<section>
<h3>tagging a image</h3>
</section>

<section>
<h2>stop your container</h2>
<pre><code data-trim contenteditable>
docker images
docker tag  name_of_image yourname/dockerclass:byhand
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>
<ul>
<li class="fragment">
add a tag to a docker image
<pre class="fragment"><code data-trim contenteditable>
docker tag
</code></pre>
</li>
<li class="fragment">
add the byhand tag to the yourname/dockerclass image
<pre class="fragment"><code data-trim contenteditable>
yourname/dockerclass:byhand
</code></pre>
</li>
<li class="fragment">
list all the images on a machine
<pre class="fragment"><code data-trim contenteditable>
docker images
</code></pre>
</li>
</ul>
</section>

<section>
<h2>cool!</h2>
<h2 class="fragment">but how can I host my files</h2>
</section>
