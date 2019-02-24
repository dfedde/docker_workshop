<h2 style="position: relative; bottom: 430px;">Lab 17</h2>

<section>
<h3>final deploy</h3>
</section>

<section>
<h2>deploy code to the server again</h2>
<pre><code data-trim contenteditable>
docker push yourname/dockerclass:byfile
docker push yourname/gitpuller

ssh sfsstudent@ip_Duncan_gave_you
# password is still sfsrocks

docker login #if you made your repo private
docker run -d --name www_files -v /var/www ubuntu
docker run --volumes-from www_files yourname/gitpuller http://the.address.of/your/repo /var/www
docker run --volumes-from www_files -p 80:80 -d yourname/dockerclass:byfile
# test if everything is working

exit
</code></pre>
</section>

<section>
<h2>what did we just do?</h2>
<ul>
</ul>
</section>
