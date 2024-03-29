<h1>Мото и вело аренда</h1>
<p>Приветствуем вас в нашем репозитории! Это проект Django, предназначенный для аренды мотоциклов. Здесь вы найдете карусель на главной странице, главную машину в шапке, главное объявление, выставочный стенд с машинами и блог с комментариями.</p>
<h2>Установка и запуск</h2>
<p>Склонируйте репозиторий с помощью команды:</p>
<pre><code>git clone https://github.com/Dedich1988/moto_rent.git</code></pre>
<p>Установите необходимые пакеты:</p>
<pre><code>pip install -r requirements.txt</code></pre>
<p>Создайте базу данных и примените миграции:</p>
<pre><code>python manage.py makemigrations<br>python manage.py migrate</code></pre>
<p>Создайте суперпользователя:</p>
<pre><code>python manage.py createsuperuser</code></pre>
<p>Запустите сервер:</p>
<pre><code>python manage.py runserver</code></pre>
<p>Откройте браузер и перейдите по адресу <a href="http://localhost:8000/">http://localhost:8000/</a></p>
<h2>Функционал</h2>
<h3>Главная страница</h3>
<p>На главной странице вы найдете карусель с изображениями мотоциклов, главную машину в шапке и главное объявление.</p>
<h3>Выставочный стенд</h3>
<p>Выставочный стенд позволяет просмотреть все доступные мотоциклы. Здесь вы можете просмотреть информацию о мотоцикле, а также оставить заявку на аренду.</p>
<h3>Блог</h3>
<p>В блоге вы можете прочитать статьи о мотоциклах и оставить комментарии.</p>
<h3>Регистрация</h3>

<p>Добавлена возможность регистрации для пользователей.</p>
<h3>API на основе Django REST Framework</h3>
<p>
DRF (Django REST Framework) - это мощный и гибкий инструментарий для создания API на основе Django. С помощью DRF мы разработали API для сайта аренды мотоциклов, который позволяет получать и отправлять данные в формате JSON. Это открывает возможности для использования нашего сайта в приложениях для мобильных устройств и интеграции с другими сервисами.
</p>
<h3>Контакты</h3>
<p>Если у вас возникли какие-либо вопросы или предложения, свяжитесь с нами по адресу: dedich1988@gmail.com</p>