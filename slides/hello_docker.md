<section>
<h3>Hello Docker</h3>
</section>

<section>
<h2>Run echo in a container</h2>
<pre><code data-trim contenteditable>
docker run ubuntu /bin/echo "Hello Docker"
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>

<pre>
<span class="fragment highlight-current-green" data-fragment-index=1>docker run</span> <span data-fragment-index=2 class="fragment highlight-current-green">ubuntu</span> <span data-fragment-index=3 class="fragment highlight-current-green">/bin/echo "Hello Docker"</span>
</pre>

<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=1>
The run command
</p>
</div>
<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=2>
The Image To Run
</p>
</div>
<div style='position: absolute;'>
<p class="fragment fade-in-then-out" data-fragment-index=3>
The command to run in the new container
</p>
</div>
</section>

<section>
<h2>great but can we do something useful?</h2>
</section>
