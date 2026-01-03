# laravel-12-on-win-docker

<h4>Prerequisite:</h4>
<ul>
  <li>Docker Desktop</li>
</ul>

Create a folder for this laravel project on your machine <br>
In my case <i>H:\docker\laravel</i> <br>

Traverse inside the folder from cmd:  <br>
<code>cd /d H:\docker\laravel</code> <br>

Run this comand from there: <br>
<code>docker run --rm -v %cd%:/app composer create-project laravel/laravel laravel-docker</code> <br>

Composer creates up a new project <b>laravel-docker</b>  <br>

Now from File Explorer get inside <b>laravel-docker</b> folder then downlaod and place these files there:
<ul>
  <li>Dockerfile</li>
  <li>docker-compose.yml</li>
  <li>nginx.conf</li>
  <li>docker-entrypoint.sh</li>
</ul>

Now get inside the project directory from cmd <code>cd /d H:\docker\laravel\laravel-docker</code> and run below command one after another serially:<br>
<code>docker compose up -d --build</code>

<code>docker compose exec app composer install</code>

<code>docker compose exec app php artisan key:generate</code>

<code>docker compose exec app php artisan migrate</code>

Now run <code>docker ps</code> to see all 3 container named <i>laravel_nginx, laravel_app</i> & <i>laravel_db</i> is running or not.

If running thrn browse it <b>http://localhost:8000/</b> you can see Laravel <b>Let's get started</b> page.
<img width="958" height="773" alt="image" src="https://github.com/user-attachments/assets/5c8f04f6-3553-4fdf-8f24-a22e80b0f920" />
