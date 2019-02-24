<h2 style="position: relative; bottom: 430px;">Lab 16</h2>

<section>
<h3>action containers</h3>
</section>

<section>
<h2>make an action container</h2>
<pre><code data-trim contenteditable>
cd ../..
mkdr -p images/git-puller
cd images/git-puller
touch Dockerfile
</code></pre>
<pre><code data-trim contenteditable>
FROM ubuntu:14.10

RUN \
apt-get update && \
apt-get install -y git

VOLUME ["/var/www"]

ENTRYPOINT ["git", "clone" ]
</code></pre>
<pre><code data-trim contenteditable>
docker build -t yourname/gitpuller .
docker run --name www_files -v /var/www ubuntu
docker run --volumes-from www_files yourname/gitpuller http://the.address.of/your/repo /var/www
docker run --volumes-from www_files -p 80:80 -d yourname/dockerclass:byfile
</code></pre>
</section>
<section>
<h2>what did we just do?</h2>
<ul>
</li>
<li class="fragment">
the command that will be run via the run command
<pre><code data-trim contenteditable>
ENTRYPOINT ["git", "clone" ]
</code></pre>
</li>
</ul>
</section>

<section>
<h2></h2>
</section>
