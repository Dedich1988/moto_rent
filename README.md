# moto_rent
bike or velo or avto rent
Аренда автомобилей
Это проект аренды автомобилей на Django. Здесь представлены функциональные возможности для аренды автомобилей, такие как:

Просмотр списка доступных автомобилей с пагинацией.
Карусель топ 10 автомобилей на первой странице.
Заказ и оплата аренды автомобиля будет.
Блог с пагинацией, с отдельными постами и коментариями.
Регистрация.

Требования
Перед тем, как начать работу с проектом, вам необходимо установить следующие инструменты:

Python 3.x
Django 3.x
PostgreSQL
asgiref==3.6.0
certifi==2022.12.7
charset-normalizer==3.0.1
Django==4.1.7
docopt==0.6.2
flake8==6.0.0
idna==3.4
mccabe==0.7.0
Pillow==9.4.0
pipreqs==0.4.11
pycodestyle==2.10.0
pyflakes==3.0.1
requests==2.28.2
sqlparse==0.4.3
tzdata==2022.7
urllib3==1.26.14
yarg==0.1.9

Установка
Чтобы установить и запустить проект, выполните следующие шаги:

Склонируйте репозиторий на вашем компьютере
bash
Copy code
git clone https://github.com/your_username/your_project.git
Создайте виртуальное окружение и активируйте его
bash
Copy code
python3 -m venv venv
source venv/bin/activate
Установите необходимые зависимости
Copy code
pip install -r requirements.txt
Создайте базу данных и выполните миграции
Copy code
createdb mydatabase
python manage.py makemigrations
python manage.py migrate
Запустите сервер
Copy code
python manage.py runserver
Откройте браузер и перейдите по адресу.
