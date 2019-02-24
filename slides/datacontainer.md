<h2 style="position: relative; bottom: 430px;">Lab 15</h2> 

<section>
<h3>data containers</h3>
</section>

<section>
<h2>make a data container image</h2>
<pre><code data-trim contenteditable>
mkdir -p images/data
cd images/data
touch Dockerfile
</code></pre>
<pre><code data-trim contenteditable>
FROM ubuntu:14.10

RUN \
apt-get update && \
apt-get install -y git

VOLUME ["/var/www"]

CMD ["git", "clone", "http://the.address.of/your/repo", "/var/www"]

</code></pre>
<pre><code data-trim contenteditable>
docker build -t yourname/wwwdata .
docker run --name www_files yourname/wwwdata
docker run --volumes-from www_files -p 80:80 -d yourname/dockerclass:byfile
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>
<ul>
<li class="fragment">
provide a explicit name for a container
<pre><code data-trim contenteditable>
--name
</code></pre>
</li>
<li class="fragment">
share a volume between containers(even not running containers)
<pre><code data-trim contenteditable>
--volumes-from
</code></pre>
</li>
</ul>
</section>

<section>
<h2>makes the data container to smart</h2>
</section>
