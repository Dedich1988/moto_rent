--
-- File generated with SQLiteStudio v3.4.3 on Mon Mar 13 15:39:45 2023
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: auth_group
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- Table: auth_group_permissions
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_permission
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_car', 'Can add car');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_car', 'Can change car');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_car', 'Can delete car');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_car', 'Can view car');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_comment', 'Can add comment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_comment', 'Can change comment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_comment', 'Can delete comment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_comment', 'Can view comment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_tags', 'Can add tags');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_tags', 'Can change tags');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_tags', 'Can delete tags');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_tags', 'Can view tags');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_post', 'Can add post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_post', 'Can change post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_post', 'Can delete post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_post', 'Can view post');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 11, 'add_category', 'Can add category');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 11, 'change_category', 'Can change category');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 11, 'delete_category', 'Can delete category');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 11, 'view_category', 'Can view category');

-- Table: auth_user
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (1, 'pbkdf2_sha256$390000$TU4R1IL203R2LH7yLKSG3t$AhDBv3qsWincleuTY7dQkM6GkRH5HjeJMm44PM9zlWc=', '2023-03-02 13:30:37.872919', 1, 'admin', '', 'dedichpgu@gmail.com', 1, 1, '2023-03-02 13:29:48.471926', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (2, 'pbkdf2_sha256$390000$NpewQXDWdCqe1OYNmgzN2D$m0gidHynoCJY0hJvRbsIaM4gt1lmav5w6V46m+rKb2g=', '2023-03-09 10:24:36', 1, 'dedich1988@gmail.com', 'Dabravolski', 'dedich1988@gmail.com', 1, 1, '2023-03-09 10:24:45', 'Alena');

-- Table: auth_user_groups
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_user_user_permissions
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: blog_category
CREATE TABLE IF NOT EXISTS "blog_category" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(50) NOT NULL);
INSERT INTO blog_category (id, title) VALUES (1, 'Creatives');
INSERT INTO blog_category (id, title) VALUES (2, 'News');
INSERT INTO blog_category (id, title) VALUES (3, 'Design');
INSERT INTO blog_category (id, title) VALUES (4, 'HTML');
INSERT INTO blog_category (id, title) VALUES (5, 'Web Development');

-- Table: blog_comment
CREATE TABLE IF NOT EXISTS "blog_comment" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "created_at" datetime NOT NULL, "text" text NOT NULL, "author_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "post_id" bigint NOT NULL REFERENCES "blog_post" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO blog_comment (id, created_at, text, author_id, post_id) VALUES (1, 1678379630000, 'hello', 1, 1);
INSERT INTO blog_comment (id, created_at, text, author_id, post_id) VALUES (2, 1646843677000, 'Я никогда не арендовал автомобиль раньше, но этот сайт дал мне возможность сделать это с легкостью. Я нашел подходящий автомобиль и получил его без каких-либо проблем. Большое спасибо за качественный сервис!', 1, 1);
INSERT INTO blog_comment (id, created_at, text, author_id, post_id) VALUES (3, 1678379621000, 'I had a last-minute need for a rental car and this website came through for me. I was able to find a great car at a reasonable price and the process was so simple. Thank you for making my trip possible!', 2, 2);
INSERT INTO blog_comment (id, created_at, text, author_id, post_id) VALUES (4, 1678466083000, 'Этот сайт для аренды автомобилей - отличное решение для тех, кто ценит свое время. Я всегда быстро нахожу подходящий автомобиль и могу забрать его в удобное для меня время."', 2, 3);
INSERT INTO blog_comment (id, created_at, text, author_id, post_id) VALUES (5, 1678383287000, 'I was hesitant to rent a car online, but this website made the process so easy and convenient. I was able to choose the perfect car for my needs and pick it up without any issues. Highly recommended!"', 1, 2);
INSERT INTO blog_comment (id, created_at, text, author_id, post_id) VALUES (6, 1615307691000, 'Этот сайт для аренды автомобилей - настоящее спасение для меня! Я всегда могу найти подходящий автомобиль по доступной цене. К тому же, процесс аренды занимает всего несколько минут.', 2, 3);
INSERT INTO blog_comment (id, created_at, text, author_id, post_id) VALUES (7, 1678379688000, 'I''ve used this rental service several times now and have always been impressed with the quality of the cars and the ease of the rental process. The prices are also very competitive compared to other rental companies.', 1, 1);
INSERT INTO blog_comment (id, created_at, text, author_id, post_id) VALUES (8, 1678379699000, 'Когда мне нужно было арендовать машину, я обратился на этот сайт и не пожалел! Весь процесс прошел без проблем, а автомобиль был в отличном состоянии. Я бы определенно воспользовался этим сервисом еще раз.', 1, 2);

-- Table: blog_post
CREATE TABLE IF NOT EXISTS "blog_post" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(50) NOT NULL, "created_at" datetime NOT NULL, "text" text NOT NULL, "image" varchar(100) NOT NULL, "author_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO blog_post (id, title, created_at, text, image, author_id) VALUES (1, '"Carrent: ваш идеальный выбор для аренды автомобил', '2023-03-09 10:26:16.333945', 'Приветствую всех на страницах сайта Carrent! Я - администратор этого сайта, и сегодня я хотел бы рассказать вам немного о том, что мы делаем.

Carrent - это компания, которая предоставляет услуги по аренде автомобилей. Мы сотрудничаем с крупнейшими производителями автомобилей и предлагаем широкий ассортимент машин различных классов и моделей.

Наши услуги могут пригодиться в различных ситуациях: будь то поездка на отдых, деловая поездка или просто необходимость передвигаться по городу на автомобиле. Мы гарантируем своим клиентам высокий уровень сервиса, удобство и комфорт во время аренды автомобиля.

Мы понимаем, что каждый клиент имеет свои индивидуальные требования и потребности, поэтому мы стараемся предоставлять нашим клиентам гибкие условия аренды и подбирать автомобиль, который соответствует их запросам.

Кроме того, мы предлагаем конкурентные цены на наши услуги и различные программы лояльности, которые помогают сэкономить на аренде автомобиля.

Так что, если вам нужен автомобиль на время поездки, не стесняйтесь связаться с нами! Мы будем рады помочь вам выбрать и арендовать автомобиль, который подойдет именно вам.', 'blog_images/toyota_land_cruiser_prado_j150_ii.jpg', 1);
INSERT INTO blog_post (id, title, created_at, text, image, author_id) VALUES (2, 'Легендарная ВАЗ-2101: история создания и популярно', '2023-03-09 10:28:31.450772', 'ВАЗ-2101, также известный как "Жигули", был создан в 1970 году и стал первым автомобилем, собранным на автозаводе в Тольятти. За время своего существования он стал настоящей легендой и любимцем многих автолюбителей.

Этот автомобиль имел простой и надежный дизайн, низкую стоимость и хорошие эксплуатационные характеристики. ВАЗ-2101 был оборудован двигателем объемом 1,2 литра мощностью 60 л.с. и механической коробкой передач. Он мог разгоняться до 100 км/ч и имел прекрасные маневренность и управляемость на дороге.

ВАЗ-2101 был не только популярным автомобилем среди советских граждан, но и покорил сердца автолюбителей по всему миру. Его экспортировали во многие страны Европы, Латинской Америки, Азии и Африки. Благодаря своей простоте, надежности и доступной цене, этот автомобиль стал символом советской автомобильной промышленности и культуры.

Сегодня ВАЗ-2101 остается популярным среди коллекционеров и любителей ретро-автомобилей. Многие из них продолжают ухаживать за своими "Жигулями" и восстанавливать их в оригинальном виде. Этот автомобиль стал частью нашей автомобильной истории и продолжает вдохновлять и восхищать автолюбителей по всему миру.', 'blog_images/VAZ2101.jpg', 2);
INSERT INTO blog_post (id, title, created_at, text, image, author_id) VALUES (3, '"BMW X5: The Iconic Luxury SUV and Its Evolution"', '2023-03-09 10:30:04.826783', 'BMW X5 is a luxury SUV that has been a popular choice among car enthusiasts since its inception in 1999. It was one of the first luxury SUVs to hit the market and has undergone several changes and improvements over the years.

The original BMW X5 was introduced as a sporty and luxurious SUV that was designed for performance and comfort. It was equipped with a range of powerful engines, including a V8 engine that produced up to 350 horsepower. The first generation of the X5 was also known for its exceptional handling and superior driving dynamics, which made it a favorite among driving enthusiasts.

In 2006, the second generation of the BMW X5 was introduced with a sleeker design and improved performance features. This model was equipped with a wider range of engines, including a twin-turbo V8 that produced up to 555 horsepower. It also featured advanced safety and technology features, including a rearview camera, adaptive headlights, and a panoramic sunroof.

The third generation of the BMW X5 was launched in 2013 and featured a more aerodynamic design and a range of new features. It was equipped with a more fuel-efficient engine and featured advanced safety features such as a surround-view camera, lane departure warning, and blind-spot monitoring.

Today, the BMW X5 continues to be a popular choice among luxury SUV buyers. It offers a combination of performance, comfort, and advanced technology that sets it apart from its competitors. With its iconic design and superior driving dynamics, the BMW X5 is sure to remain a favorite among car enthusiasts for years to come.', 'blog_images/bmw_x5_30d_iv_g05_arenda_v_minske.jpg', 2);
INSERT INTO blog_post (id, title, created_at, text, image, author_id) VALUES (4, 'Introducing Our New Bot: Rent Your Car with Ease', '2023-03-09 10:36:55.849310', 'At Carrent, we are proud to announce the launch of our new bot, which allows you to easily rent out your car through our service. Our bot is designed to make the rental process simple and efficient, allowing you to earn extra income without any hassle.

With our bot, you can list your car for rent in just a few clicks. Simply provide us with some basic information about your car, such as its make and model, and we''ll take care of the rest. Our bot will handle everything from booking requests to payment processing, so you can sit back and relax.

Our bot is also designed to provide a seamless experience for renters. They can easily browse available cars, select the dates they need, and make their reservation with just a few clicks. Our bot will handle all the details, including insurance and security checks, to ensure a safe and worry-free rental experience.

We understand that renting out your car can be a daunting task, but with our new bot, it''s never been easier. So why wait? Sign up for our service today and start earning extra income by renting out your car with ease.', 'blog_images/foto-g-wagen_01.jpg', 1);

-- Table: blog_post_categories
CREATE TABLE IF NOT EXISTS "blog_post_categories" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "post_id" bigint NOT NULL REFERENCES "blog_post" ("id") DEFERRABLE INITIALLY DEFERRED, "category_id" bigint NOT NULL REFERENCES "blog_category" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO blog_post_categories (id, post_id, category_id) VALUES (1, 1, 1);
INSERT INTO blog_post_categories (id, post_id, category_id) VALUES (2, 1, 2);
INSERT INTO blog_post_categories (id, post_id, category_id) VALUES (3, 1, 5);
INSERT INTO blog_post_categories (id, post_id, category_id) VALUES (4, 2, 1);
INSERT INTO blog_post_categories (id, post_id, category_id) VALUES (5, 2, 3);
INSERT INTO blog_post_categories (id, post_id, category_id) VALUES (6, 3, 1);
INSERT INTO blog_post_categories (id, post_id, category_id) VALUES (7, 3, 2);
INSERT INTO blog_post_categories (id, post_id, category_id) VALUES (8, 3, 3);
INSERT INTO blog_post_categories (id, post_id, category_id) VALUES (9, 4, 1);
INSERT INTO blog_post_categories (id, post_id, category_id) VALUES (10, 4, 2);
INSERT INTO blog_post_categories (id, post_id, category_id) VALUES (11, 4, 4);
INSERT INTO blog_post_categories (id, post_id, category_id) VALUES (12, 4, 5);

-- Table: blog_post_tags
CREATE TABLE IF NOT EXISTS "blog_post_tags" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "post_id" bigint NOT NULL REFERENCES "blog_post" ("id") DEFERRABLE INITIALLY DEFERRED, "tags_id" bigint NOT NULL REFERENCES "blog_tags" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO blog_post_tags (id, post_id, tags_id) VALUES (1, 1, 3);
INSERT INTO blog_post_tags (id, post_id, tags_id) VALUES (2, 2, 2);
INSERT INTO blog_post_tags (id, post_id, tags_id) VALUES (3, 2, 3);
INSERT INTO blog_post_tags (id, post_id, tags_id) VALUES (4, 3, 1);
INSERT INTO blog_post_tags (id, post_id, tags_id) VALUES (5, 3, 3);
INSERT INTO blog_post_tags (id, post_id, tags_id) VALUES (6, 4, 3);

-- Table: blog_tags
CREATE TABLE IF NOT EXISTS "blog_tags" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(30) NOT NULL);
INSERT INTO blog_tags (id, title) VALUES (1, 'modern');
INSERT INTO blog_tags (id, title) VALUES (2, 'vintage');
INSERT INTO blog_tags (id, title) VALUES (3, 'cars');

-- Table: django_admin_log
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (1, '1', 'ВАЗ2101', 1, '[{"added": {}}]', 7, 1, '2023-03-03 09:20:18.106624');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (2, '2', 'ВАЗ2106', 1, '[{"added": {}}]', 7, 1, '2023-03-03 09:21:09.400626');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (3, '3', 'Geely Atlas', 1, '[{"added": {}}]', 7, 1, '2023-03-03 09:22:31.534628');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (4, '4', 'НИВА', 1, '[{"added": {}}]', 7, 1, '2023-03-03 09:22:59.577628');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (5, '5', 'Lada Vests', 1, '[{"added": {}}]', 7, 1, '2023-03-03 09:23:45.106623');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (6, '5', 'Lada Vests', 2, '[{"changed": {"fields": ["Photo"]}}]', 7, 1, '2023-03-03 11:43:00.930012');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (7, '4', 'НИВА', 2, '[{"changed": {"fields": ["Photo"]}}]', 7, 1, '2023-03-03 11:43:59.465573');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (8, '3', 'Geely Atlas', 2, '[{"changed": {"fields": ["Photo"]}}]', 7, 1, '2023-03-03 11:44:07.728771');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (9, '2', 'ВАЗ2106', 2, '[{"changed": {"fields": ["Photo"]}}]', 7, 1, '2023-03-03 11:44:18.709979');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (10, '1', 'ВАЗ2101', 2, '[{"changed": {"fields": ["Photo"]}}]', 7, 1, '2023-03-03 11:44:26.650974');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (11, '6', 'LADA LARGUS', 1, '[{"added": {}}]', 7, 1, '2023-03-03 13:20:28.963087');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (12, '7', 'ВАЗ 2110', 1, '[{"added": {}}]', 7, 1, '2023-03-03 13:20:55.366040');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (13, '8', 'Mercedes-Benz S-Class W222', 1, '[{"added": {}}]', 7, 1, '2023-03-06 08:21:47.199605');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (14, '9', 'Chevrolet Camaro', 1, '[{"added": {}}]', 7, 1, '2023-03-06 08:23:40.771912');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (15, '10', 'BMW 5-Series G30', 1, '[{"added": {}}]', 7, 1, '2023-03-06 08:27:05.876986');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (16, '11', 'Audi A4 35 TFSI V (B9)', 1, '[{"added": {}}]', 7, 1, '2023-03-06 08:28:25.065205');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (17, '5', 'Lada Vests', 3, '', 7, 1, '2023-03-06 08:29:36.556160');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (18, '12', 'Toyota Land Cruiser Prado J150 II', 1, '[{"added": {}}]', 7, 1, '2023-03-06 08:30:39.201892');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (19, '13', 'BMW X5 30d IV', 1, '[{"added": {}}]', 7, 1, '2023-03-06 08:31:41.188495');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (20, '14', 'Renault Logan Stepway 2020', 1, '[{"added": {}}]', 7, 1, '2023-03-06 08:34:37.565992');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (21, '14', 'Renault Logan Stepway 2020', 3, '', 7, 1, '2023-03-06 09:25:51.695713');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (22, '15', 'MERCEDES W463 G550', 1, '[{"added": {}}]', 7, 1, '2023-03-07 05:25:34.413675');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (23, '1', 'Creatives', 1, '[{"added": {}}]', 11, 1, '2023-03-07 11:19:54.417272');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (24, '2', 'News', 1, '[{"added": {}}]', 11, 1, '2023-03-07 11:20:10.315271');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (25, '3', 'Design', 1, '[{"added": {}}]', 11, 1, '2023-03-07 11:20:19.935272');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (26, '4', 'HTML', 1, '[{"added": {}}]', 11, 1, '2023-03-07 11:20:33.757275');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (27, '5', 'Web Development', 1, '[{"added": {}}]', 11, 1, '2023-03-07 11:20:59.510275');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (28, '1', 'modern', 1, '[{"added": {}}]', 9, 1, '2023-03-09 10:12:35.770021');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (29, '2', 'vintage', 1, '[{"added": {}}]', 9, 1, '2023-03-09 10:12:44.910973');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (30, '3', 'cars', 1, '[{"added": {}}]', 9, 1, '2023-03-09 10:12:52.320266');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (31, '2', 'Alena_D', 1, '[{"added": {}}]', 4, 1, '2023-03-09 10:23:24.573430');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (32, '2', 'dedich1988@gmail.com', 2, '[{"changed": {"fields": ["Username", "First name", "Last name", "Email address", "Staff status", "Superuser status", "Last login", "Date joined"]}}]', 4, 1, '2023-03-09 10:24:47.442938');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (33, '1', '"Carrent: ваш идеальный выбор для аренды автомобил', 1, '[{"added": {}}]', 10, 1, '2023-03-09 10:26:16.397020');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (34, '2', 'Легендарная ВАЗ-2101: история создания и популярно', 1, '[{"added": {}}]', 10, 1, '2023-03-09 10:28:31.478776');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (35, '3', '"BMW X5: The Iconic Luxury SUV and Its Evolution"', 1, '[{"added": {}}]', 10, 1, '2023-03-09 10:30:04.832779');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (36, '4', 'Introducing Our New Bot: Rent Your Car with Ease', 1, '[{"added": {}}]', 10, 1, '2023-03-09 10:36:55.858308');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (37, '3', '"BMW X5: The Iconic Luxury SUV and Its Evolution"', 2, '[{"changed": {"fields": ["Image"]}}]', 10, 1, '2023-03-09 11:45:20.335545');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (38, '2', 'Легендарная ВАЗ-2101: история создания и популярно', 2, '[]', 10, 1, '2023-03-09 11:45:26.579585');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (39, '1', '"Carrent: ваш идеальный выбор для аренды автомобил', 2, '[]', 10, 1, '2023-03-09 11:45:30.644935');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (40, '4', 'Introducing Our New Bot: Rent Your Car with Ease', 2, '[{"changed": {"fields": ["Image"]}}]', 10, 1, '2023-03-09 11:46:35.057513');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (41, '4', 'Introducing Our New Bot: Rent Your Car with Ease', 2, '[]', 10, 1, '2023-03-09 11:47:01.379532');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (42, '1', '"Carrent: ваш идеальный выбор для аренды автомобил', 2, '[{"changed": {"fields": ["Image"]}}]', 10, 1, '2023-03-09 11:48:46.523457');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (43, '1', '"Carrent: ваш идеальный выбор для аренды автомобил', 2, '[{"changed": {"fields": ["Image"]}}]', 10, 1, '2023-03-09 11:49:09.951418');

-- Table: django_content_type
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'webapp', 'car');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'blog', 'comment');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'blog', 'tags');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'blog', 'post');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'blog', 'category');

-- Table: django_migrations
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2023-03-02 13:26:21.222916');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2023-03-02 13:26:21.443919');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2023-03-02 13:26:21.618919');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-03-02 13:26:21.739927');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-02 13:26:21.844921');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-03-02 13:26:21.963922');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-03-02 13:26:22.093922');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-03-02 13:26:22.250920');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-03-02 13:26:22.359920');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-03-02 13:26:22.467918');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-03-02 13:26:22.551919');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-02 13:26:22.657917');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-03-02 13:26:22.796920');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-02 13:26:22.918921');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-03-02 13:26:23.033921');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-03-02 13:26:23.160917');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-02 13:26:23.275920');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2023-03-02 13:26:23.444917');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'webapp', '0001_initial', '2023-03-03 09:19:08.483622');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'blog', '0001_initial', '2023-03-07 11:13:55.849739');

-- Table: django_session
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('fssli1x16agonfjn66gd6l30fe6cyhci', '.eJxVjMsOwiAURP-FtSEgl5dL934D4XJBqgaS0q6M_26bdKG7yZwz82YhrksN68hzmIhdmGSn3w5jeua2A3rEdu889bbME_Jd4Qcd_NYpv66H-3dQ46jbuogi0GmpUSpUyQAAggGnkiLjrbNodFSECFv2BMkbzKRMse4sBUn2-QLNgTdP:1pXj13:wOPSe7xUbC-Kos0nxyTUgffxrAT_3sVwwCxyYz_NzaE', '2023-03-16 13:30:37.958919');

-- Table: webapp_car
CREATE TABLE IF NOT EXISTS "webapp_car" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(100) NOT NULL, "door_num" integer unsigned NOT NULL CHECK ("door_num" >= 0), "seat_num" integer unsigned NOT NULL CHECK ("seat_num" >= 0), "transmission" varchar(10) NOT NULL, "rating" integer NOT NULL, "price" integer unsigned NOT NULL CHECK ("price" >= 0), "photo" varchar(100) NOT NULL);
INSERT INTO webapp_car (id, title, door_num, seat_num, transmission, rating, price, photo) VALUES (1, 'ВАЗ2101', 4, 5, 'manual', 5, 500, 'car_photos/VAZ2101.jpg');
INSERT INTO webapp_car (id, title, door_num, seat_num, transmission, rating, price, photo) VALUES (2, 'ВАЗ2106', 4, 5, 'manual', 5, 500, 'car_photos/VAZ2106.jpg');
INSERT INTO webapp_car (id, title, door_num, seat_num, transmission, rating, price, photo) VALUES (3, 'Geely Atlas', 5, 5, 'automatic', 4, 20000, 'car_photos/geelyatlas.jpg');
INSERT INTO webapp_car (id, title, door_num, seat_num, transmission, rating, price, photo) VALUES (4, 'НИВА', 3, 5, 'manual', 3, 9000, 'car_photos/niva.jpg');
INSERT INTO webapp_car (id, title, door_num, seat_num, transmission, rating, price, photo) VALUES (6, 'LADA LARGUS', 5, 5, 'manual', 3, 350, 'car_photos/largus.jpg');
INSERT INTO webapp_car (id, title, door_num, seat_num, transmission, rating, price, photo) VALUES (7, 'ВАЗ 2110', 4, 5, 'manual', 4, 400, 'car_photos/2110.jpg');
INSERT INTO webapp_car (id, title, door_num, seat_num, transmission, rating, price, photo) VALUES (8, 'Mercedes-Benz S-Class W222', 4, 5, 'automatic', 4, 500, 'car_photos/Mersedes222.jpg');
INSERT INTO webapp_car (id, title, door_num, seat_num, transmission, rating, price, photo) VALUES (9, 'Chevrolet Camaro', 4, 5, 'automatic', 3, 230, 'car_photos/shevrole_kamaro_kabriolet_2021_krasnyy_tsvet.jpg');
INSERT INTO webapp_car (id, title, door_num, seat_num, transmission, rating, price, photo) VALUES (10, 'BMW 5-Series G30', 5, 5, 'automatic', 5, 390, 'car_photos/prokat_bmw_520d_g30_2021.jpg');
INSERT INTO webapp_car (id, title, door_num, seat_num, transmission, rating, price, photo) VALUES (11, 'Audi A4 35 TFSI V (B9)', 4, 4, 'automatic', 5, 208, 'car_photos/audi_a4_35_tfsi_v_b9_foto.jpg');
INSERT INTO webapp_car (id, title, door_num, seat_num, transmission, rating, price, photo) VALUES (12, 'Toyota Land Cruiser Prado J150 II', 5, 5, 'automatic', 4, 520, 'car_photos/toyota_land_cruiser_prado_j150_ii.jpg');
INSERT INTO webapp_car (id, title, door_num, seat_num, transmission, rating, price, photo) VALUES (13, 'BMW X5 30d IV', 5, 5, 'manual', 5, 572, 'car_photos/bmw_x5_30d_iv_g05_arenda_v_minske.jpg');
INSERT INTO webapp_car (id, title, door_num, seat_num, transmission, rating, price, photo) VALUES (15, 'MERCEDES W463 G550', 4, 5, 'manual', 5, 1000, 'car_photos/foto-g-wagen_01.jpg');

-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index: auth_user_groups_group_id_97559544
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- Index: auth_user_groups_user_id_6a12ed8b
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- Index: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- Index: blog_comment_author_id_4f11e2e0
CREATE INDEX IF NOT EXISTS "blog_comment_author_id_4f11e2e0" ON "blog_comment" ("author_id");

-- Index: blog_comment_post_id_580e96ef
CREATE INDEX IF NOT EXISTS "blog_comment_post_id_580e96ef" ON "blog_comment" ("post_id");

-- Index: blog_post_author_id_dd7a8485
CREATE INDEX IF NOT EXISTS "blog_post_author_id_dd7a8485" ON "blog_post" ("author_id");

-- Index: blog_post_categories_category_id_2211dae5
CREATE INDEX IF NOT EXISTS "blog_post_categories_category_id_2211dae5" ON "blog_post_categories" ("category_id");

-- Index: blog_post_categories_post_id_c34e7be1
CREATE INDEX IF NOT EXISTS "blog_post_categories_post_id_c34e7be1" ON "blog_post_categories" ("post_id");

-- Index: blog_post_categories_post_id_category_id_ed4f1727_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "blog_post_categories_post_id_category_id_ed4f1727_uniq" ON "blog_post_categories" ("post_id", "category_id");

-- Index: blog_post_tags_post_id_a1c71c8a
CREATE INDEX IF NOT EXISTS "blog_post_tags_post_id_a1c71c8a" ON "blog_post_tags" ("post_id");

-- Index: blog_post_tags_post_id_tags_id_585f444b_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "blog_post_tags_post_id_tags_id_585f444b_uniq" ON "blog_post_tags" ("post_id", "tags_id");

-- Index: blog_post_tags_tags_id_07c8205a
CREATE INDEX IF NOT EXISTS "blog_post_tags_tags_id_07c8205a" ON "blog_post_tags" ("tags_id");

-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index: django_session_expire_date_a5c62663
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
