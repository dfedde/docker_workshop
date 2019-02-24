<h2 style="position: relative; bottom: 430px;">Lab 10</h2>

<section>
<h3>forking the repo</h3>
</section>

<section>
<h2>fork and prep my github repo</h2>
<h3><a href="https://github.com/dfedde/docker_workshop"> the repo</a></h3>
<ul>
<li> go over to my repository click the<a href="https://github.com/dfedde/docker_workshop/fork"> fork </a>button</li>
<li> go to your new repository select the Dockerfile file</li>
<li> select the trashcan button</li>
<li> select the commit changes button at the bottom of the page</li>
<li> now run these commands</li>
</ul>
<pre><code data-trim contenteditable>
git clone http://the.address.of/your/repo docker_workshop
cd docker_workshop
touch Dockerfile
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>
<ul>
<li class="fragment">
make a copy of my repo under your namespace
</li>
<li class="fragment">
removed my docker file
</li>
<li class="fragment">
clone your repo
<pre><code data-trim contenteditable>
git clone http://the.address.of/your/repo docker_workshop
</code></pre>
</li>
<li class="fragment">
make a new empty docker file
<pre><code data-trim contenteditable>
touch Dockerfile
</code></pre>
</li>
</ul>
</section>

<section>
<h2>what do I put in this new file?</h2>
</section>
