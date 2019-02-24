<h2 style="position: relative; bottom: 430px;">Lab 9</h2>

<section>
<h3>your first deploy</h3>
</section>

<section>
<h2>deploy to your server</h2>
<pre><code data-trim contenteditable>
ssh sfsstudent@ip_Duncan_gave_you
# password is sfsrocks
docker login #if you made your repo private
docker pull yourname/dockerclass
docker run -p 80:80 -d  yourname/dockerclass nginx
# test your new server
exit
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>
<ul>
<li class="fragment">
pull the image back down
<pre class="fragment"><code data-trim contenteditable>
docker pull yourname/dockerclass
</code></pre>
</li>
<li class="fragment">
run the container
<pre class="fragment"><code data-trim contenteditable>
docker run -p 80:80 -d  yourname/dockerclass
</code></pre>
</li>
</ul>
</section>

<section>
<h2>but there is a better way to make images</h2>
</section>
