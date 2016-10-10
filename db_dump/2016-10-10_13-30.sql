-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 10 2016 г., 13:32
-- Версия сервера: 5.5.50
-- Версия PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `premiumclub_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL,
  `imgs` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `description`, `price`, `quantity`, `imgs`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(35, 2, 'Економ|Econom|', 'Просторий номер, обладнаний усім необхідним для приємного проживання гостей. Від стандартного номеру відрізняється наявністю вішалки для одягу замість шафи. Інтер’єр світлих відтінків, сучасні меблі, власна ванна кімната з душовою кабіною і косметичним набором.<br>\r\nНомер підходить для комфортного бюджетного відпочинку туристів, а також проживання працівників у відрядженні.<br>\r\n<table>\r\n<tr><td>Ліжка</td><td>1 двоспальне/ 2 окремих односпальних</td></tr>\r\n<tr><td>Розміщення</td><td>2 дорослих</td></tr>\r\n</table>\r\n<br>\r\n<ul>\r\n<li>Прихожа з вішалкою для одягу</li>\r\n<li>Зона відпочинку зі столиком і двома стільцями</li>\r\n<li>1 велике двоспальне або 2 окремих односпальних ліжка</li>\r\n<li>Приліжкові тумби</li>\r\n<li>Телевізор</li>\r\n<li>Санвузол з душовою кабіною</li>\r\n<li>Набір необхідних засобів гігієни у ванній кімнаті</li>\r\n<li>Рушники</li>\r\n</ul>|Spacious room equipped with everything needed for a pleasant stay of guests. It differs from the standart room only by the clothes hangers instead of the hallwaywith closet. The interior isin bright colors, modern furniture, a private bathroom with a shower and a cosmetic set.<br>\r\nIs suitable for a comfortable budget leisure of travelers and just forbusiness trips.<br>\r\n<table>\r\n<tr><td>Beds</td><td>1 double / 2 single individual</td></tr>\r\n<tr><td>Location</td><td>2 adults</td></tr>\r\n</table>\r\n<br>\r\n<ul>\r\n<li>Hallway with hanger</li>\r\n<li>Recreation zone with table and two chairs</li>\r\n<li>1 large double or 2 single beds</li>\r\n<li>Bedside tables</li>\r\n<li>TV</li>\r\n<li>Bathroom with shower</li>\r\n<li>Set of the required hygiene products in the bathroom</li>\r\n<li>Towels</li>\r\n</ul>|', 200.00, 2, '[]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-10 04:11:44'),
(36, 3, 'Дитяча ігрова кімната|Children''s playroom|', 'Інфраструктура готелю «Premium Club» у Яремчі спланована таким чином, щоб зробити сімейний відпочинок максимально цікавим та комфортним як для дітей, так і для їх батьків.<br>\r\nГірське чисте повітря та чаруючий краєвид – це, безумовно, насолода найвищого ступеню. Проте далеко не кожну дитину можна зацікавити таким видом проводження часу.<br>\r\nЩоб проживання було корисним абсолютно для кожного мешканця готелю, ми облаштували дитячу розважальну кімнату. Тут наші маленькі гості можуть активно провести вільний час. Дорослі ж мають змогу побути на самоті, знаючи, що їх діти перебувають у безпечному та цікавому місці.<br>\r\nПереваги дитячої кімнати у готелі «Premium Club»:<br>\r\n<ul>\r\n<li>•	Відвідування входить у вартість проживання.</li>\r\n<li>•	Сучасне якісне обладнання для гри у настільний теніс і настільний футбол.</li>\r\n<li>•	Приміщення спортзалу має безпечне та зручне килимове покриття.</li>\r\n</ul>\r\nГотель «Premium Club» у Карпатах – місце для активного сімейного відпочинку у горах. Відпочивайте разом з нами.|The infrastructure of the hotel «Premium Club» in Yaremche is planned to make a family vacation maximally interesting and comfortable both for children and for their parents.<br>\r\nClean mountain air and charming landscape – it is certainly an ultimate pleasure. But not every child may be interested in such type of pastime.<br>\r\nTo make stay at the hotel absolutely beneficial for each resident, we arranged the children''s entertainment room. Here our little guests can actively spend their free time. Thus adults get the opportunity to stay alone, knowing that their children are in a safe and interesting place.<br>\r\n    Benefits of children''s room in the hotel «Premium Club»:\r\n<ul>\r\n<li>• Visiting is included in the cost of residence.</li>\r\n<li>• Modern high quality equipment for table tennis and table football playing.</li>\r\n<li>• Sports room has a safe and comfortable carpet coverage.</li>\r\n</ul>\r\nThe hotel «Premium Club» in the Carpathians is a place for an active family holiday in the mountains. Relax with us.|', 100.00, 0, '["upload\\/articles\\/36\\/images\\/2T0A2228.jpg","upload\\/articles\\/36\\/images\\/2T0A2257.jpg"]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-10 04:25:24'),
(37, 4, 'Лекції лікаря стоматолога - Кулигіна Олега Борисовича|Lection of doctor|', 'Кулигін Олег Борисович Завідувач відділенням терапевтичної стоматології, Кандидат медичних наук, Лікар-стоматолог-терапевт, ІІ категорія, Лікар-стоматолог-ортопед.\r\nСпеціалізується на наданні ендодонтичної допомоги з використанням операційного мікроскопу та конусно-променевого комп''ютерного томографу. Видалення зламаних інструментів із кореневих каналів. Закриття перфорації зуба. Діагностика стану кореневих каналів.|Kulyhin Oleg Head of Department dentistry, MD, dentist, therapist, II category, Dentist-orthopedist.\r\nSpecializes in providing dental care using the operating microscope and cone beam computer books scanner. Removal of broken instruments from root canals. Closure of perforation tooth. Diagnostics of root canals.|', 0.00, 0, '[]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-10 05:06:25'),
(38, 1, 'Яскравий відпочинок у Карпатах|Unforgettable rest in Carpathians|', 'Українські Карпати – улюблене місце цінителів активного відпочинку як влітку, так і взимку.\r\nВідпустка або вихідні в горах – це завжди незабутні краєвиди, чисті озера, високогірне повітря, стрімкі ріки та хвойні ліси, незалежно від пори року.<br>\r\nЗима в Карпатах пропонує безліч гірськолижних курортів з трасами різних рівнів складності та незмінно якісним обслуговуванням. До вподоби тут відпочивати і лижникам, і сноубордистам, також можна покататися на санках.  Влітку гори пропонують безліч варіантів активного проводження часу: альпінізм, рибалку, піші походи, прогулянки на велосипеді або квадроциклі. Літній та весняний сезони – ідеальний час для еко відпочинку в Західній Україні. Осінь найкраще підходить для любителів полювань, збору ягід та грибів. Такою ж популярністю, як місцевий відпочинок, користується лікування на оздоровчих курортах. <br>\r\nНеважливо, який сезон Ви обрали для відпочинку – Карпати завжди дарують безліч яскравих емоцій.<br>\r\nЯремче – популярний серед українців гірськолижний курорт. Щороку тут відпочивають тисячі співвітчизників та іноземців. Але славиться він не лише природою. Регіон зарекомендував себе як один із найгостинніших і найпривітніших. Місцеве населення чудово ставиться до приїжджих, завжди радо зустрічає і забезпечує комфортабельний прийом. Відпочинок у Яремчі залишає після себе виключно теплі та приємні спогади.<br>\r\n«Premium club» - комфортний готель у Карпатах<br>\r\nУ горах та Прикарпатті є безліч варіантів готелів та котеджів, що пропонують свої послуги. Проте довіряти відпустку варто лише надійним та перевіреним. <br>\r\nГотель «Premium club» пропонує відпочинок у затишному куточку України – курорті Яремче. Для Вас пропонуємо:\r\n<ul>\r\n<li>•	Зручне розташування. Ми знаходимося неподалік від гірськолижних трас, що зручно для любителів активного зимнього відпочинку. </li>\r\n<li>•	54 облаштовані номери різних категорій. Пропонуємо варіанти в залежності від Ваших потреб та фінансових побажань. </li>\r\n<li>•	Простору територію та розвинену інфраструктуру готелю, що дозволяє гостям проводити час, не доставляючи дискомфорт один одному. «Premium club» підходить для дружніх компаній, для сімейної відпустки, а також для тих, хто бажає провести романтичний відпочинок в Карпатах на двох.</li>\r\n<li>•	Активно розвинений спортивно-оздоровчий комплекс. У нас є відкритий та внутрішній басейни, спа-зона з хамамом, спорт зал для дорослих, кімната відпочинку для дітей. </li>\r\n<li>•	Ресторан та бар з авторською кухнею, широкою картою напоїв та першокласним сервісом.</li>\r\n<li>•	Сучасно обладнаний конференц зал для проведення різноманітних корпоративних заходів.</li>\r\n</ul>\r\nБронюйте номер у готелі «Premium club» у Яремчі – ми надаємо VIP-відпочинок в Карпатах за доступною ціною.|Ukrainian Carpathians are known to be the favorite place of judges of active rest both in summer, and in winter.Vacation or weekend in the mountains - it''s always unforgettable views, clean lakes, mountain air, abundant rivers and pine forests, regardless of the season.<br>\r\n    Winter in Carpathians offers many ski resorts with slopes of different difficulty levels and consistently good service. Skiers, and snowboarders likes to stay here.It is also possible to drive on sledges. In summertime mountains offer many options for active pastime: climbing, fishing, hiking, walks on a bicycle or quads. Summer and spring seasons are the perfect time for eco vacation in Western Ukraine. Autumn is best suited for fans of hunting, gathering berries and mushrooms. Equally popular as a local holiday is treatment at health resorts.<br>\r\n    No matter which season you choose to rest – Carpathians always give a lot of bright emotions.<br>\r\n    Yaremche is a popular Ukrainian ski resort. Annually thousands of compatriots and foreigners have a rest here. But it is famous not only for its nature. The region has established itself as one of the most hospitable and friendliest. A local population treats visitors very nice and pleasantly, always gladly meets and provides a comfortable reception.Rest in Yaremcheleaves only warm and pleasant memories.<br>\r\n    «Premium Club» - comfortable hotel in the Carpathians<br>\r\nThere are many hotels and cottages in the mountains and the Carpathian region.However,tourists should trust only to reliable and tested ones.<br>\r\n        Hotel «Premium Club» offers a vacation in a cozy corner of Ukraine – the resort Yaremche. We offer:\r\n<ul>\r\n<li>• Convenient location. We are located near the ski slopes, which is convenient for fans of the winter active holidays.</li>\r\n<li>• 54 furnished rooms of different categories. We offer variants depending on your needs and financial wishes.</li>\r\n<li>• Spacious area and developed infrastructure of the hotel allow guests to spend time without bringing discomfort to each other. «Premium Club» is suitable for friendly companies, for a family vacation, and for those who wish to spend a romantic holiday for two in the Carpathian Mountains.</li>\r\n<li>• Well-developed sports complex. We have an outdoor and indoor pools, a spa zone with hammam, gym for adultsand sport’s room for children.</li>\r\n<li>• Restaurant and bar with authorial cuisine, extensive drinks card and first class service.</li>\r\n<li>• Modernly equipped conference hall for various corporate events.</li>\r\n</ul>\r\n        Book a room inthe hotel «Premium club» in Yaremche and we will provide a VIP-rest in the Carpathians for an affordable price.|', 100.00, 0, '["upload\\/articles\\/38\\/images\\/2T0A2176.jpg","upload\\/articles\\/38\\/images\\/2T0A2228.jpg","upload\\/articles\\/38\\/images\\/2T0A2245.jpg","upload\\/articles\\/38\\/images\\/2T0A2257.jpg","upload\\/articles\\/38\\/images\\/2T0A2302.jpg","upload\\/articles\\/38\\/images\\/2T0A2372.jpg","upload\\/articles\\/38\\/images\\/2T0A2378.jpg","upload\\/articles\\/38\\/images\\/2T0A2497.jpg","upload\\/articles\\/38\\/images\\/2T0A2501.jpg"]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-07 19:34:05'),
(39, 2, 'Стандарт з балконом|Standard with balcony|', 'Найпопулярніша категорія для відпочинку у нашому готелі. Просторий номер, обладнаний усім необхідним для комфортабельного розміщення відпочиваючих.<br>\r\n У цій категорії номерів на Вас очікує стильний інтер’єр світлих відтінків, сучасні нові меблі (в тому числі зручне велике ліжко), індивідуальна ванна кімната з сучасною душовою кабіною та косметичним набором, балкон з панорамним видом на регіон Карпат.<br>\r\n<table>\r\n<tr><td>Ліжка</td><td>1 двоспальне/ 2 окремих односпальних</td></tr>\r\n<tr><td>Розміщення</td><td>2 дорослих</td></tr>\r\n</table>\r\n<br>\r\n<ul>\r\n<li>Прихожа з просторою шафою для одягу</li>\r\n<li>Зона відпочинку зі столиком і двома стільцями</li>\r\n<li>1 велике двоспальне або 2 окремих односпальних ліжка</li>\r\n<li>Приліжкові тумби</li>\r\n<li>Телевізор</li>\r\n<li>Санвузол з душовою кабіною</li>\r\n<li>Набір необхідних засобів гігієни у ванній кімнаті</li>\r\n<li>Рушники</li>\r\n<li>Балкон</li>\r\n<ul>|The most popular category of stay in our hotel. Spacious room, equipped with everything necessary for comfortable accommodation of tourists.<br>\r\nRooms In this category have stylish interior in bright colors, modern new furniture (including comfortable double bed), individual bathroom with a modern shower and a cosmetic set, balcony with panoramic views of the Carpathian region.<br>\r\n<table>\r\n<tr><td>Beds</td><td>1 double / 2 single individual</td></tr>\r\n<tr><td>Location</td><td>2 adults</td></tr>\r\n</table>\r\n<br>\r\n<ul>\r\n<li>Hallway with a spacious wardrobe</li>\r\n<li>Recreation zone with table and two chairs</li>\r\n<li>1 large double or 2 single beds</li>\r\n<li>Bedside tables</li>\r\n<li>TV</li>\r\n<li>Bathroom with shower</li>\r\n<li>Set of the required hygiene products in the bathroom</li>\r\n<li>Towels</li>\r\n<li>Balcony</li>\r\n</ul>|', 400.00, 32, '["upload\\/articles\\/39\\/images\\/2T0A2228.jpg","upload\\/articles\\/39\\/images\\/standart wiyh balcon.jpg","upload\\/articles\\/39\\/images\\/standart.jpg"]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-10 04:12:21'),
(40, 2, 'Напівлюкс|Junior|', 'Номер високого рівня комфорту. Чудовий вигляд із балкону. Оптимальний варіант розміщення для сімейного відпочинку з дітьми. Просторий, зручно та продумано обладнаний номер не створює незручностей при сумісному проживанні.<br>\r\nУ кожній кімнаті цієї категорії – дизайнерський сучасний інтер’єр у світлих тонах, достатній рівень освітлення (як штучного, так і природнього), панорамний вид з вікон та балкону.<br>\r\n<table>\r\n<tr><td>Ліжка</td><td>1 велике двоспальне і розкладний диван</td></tr>\r\n<tr><td>Розміщення</td><td>2 дорослих і 1 дитина</td></tr>\r\n</table>\r\n<br>\r\n<ul>\r\n<li>Прихожа з просторою шафою для одягу</li>\r\n<li>Зона відпочинку зі столиком і двома стільцями</li>\r\n<li>1 велике двоспальне ліжко і розкладний диван</li>\r\n<li>Приліжкові тумби</li>\r\n<li>Телевізор</li>\r\n<li>Санвузол з душовою кабіною</li>\r\n<li>Набір необхідних засобів гігієни у ванній кімнаті</li>\r\n<li>Рушники</li>\r\n<li>Балкон</li>\r\n</ul>|Room of high level of comfort. Wonderful view from the balcony. The best accommodation option for families with children. Spacious, comfortable and thoughtfully equipped room creates inconveniences during cohabitation.<br>\r\nEach room in this category has a modern design in bright colors, adequate lighting (both artificial and natural), panoramic view from windows and balcony.<br>\r\n<table>\r\n<tr><td>Beds</td><td>1 large double bed and sofa</td></tr>\r\n<tr><td>Location</td><td>2 adults and 1 child</td></tr>\r\n</table>\r\n<br>\r\n<ul>\r\n<li>Hallway with a spacious wardrobe</li>\r\n<li>Recreation zone with table and two chairs</li>\r\n<li>1 large double bed and sofa</li>\r\n<li>Bedside tables</li>\r\n<li>TV</li>\r\n<li>Bathroom with shower</li>\r\n<li>Set the required hygiene products in the bathroom</li>\r\n<li>Towels</li>\r\n<li>Balcony</li>\r\n</ul>|', 600.00, 3, '[]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-10 04:17:08'),
(41, 2, 'Апартаменти|Apartment|', 'Проживання у апартаментах нашого готелю забезпечить Вам ексклюзивний VIP-відпочинок за відносно доступною ціною. Ця категорія номерів передбачає наявність власної кухонної зони з усім необхідним для приготування їжі. Особливо це зручно при проживанні з маленькими дітьми. У номері облаштована власна вітальня.<br>\r\nСвітлі, просторі номери з сучасними меблями, ванна кімната з душовою кабіною та косметичним набором.<br>\r\n<table>\r\n<tr><td>Ліжка</td><td>1 велике двоспальне і розкладний диван</td></tr>\r\n<tr><td>Розміщення</td><td>2 дорослих і 1 дитина</td></tr>\r\n</table>\r\n<br>\r\n<ul>\r\n<li>Двокімнатний номер</li>\r\n<li>Прихожа з просторою шафою для одягу</li>\r\n<li>Вітальня</li>\r\n<li>Зона відпочинку зі столиком і двома кріслами</li>\r\n<li>Власна кухня, облаштована меблями, раковиною та набором посуду</li>\r\n<li>1 велике двоспальне ліжко і розкладний диван</li>\r\n<li>Приліжкові тумби</li>\r\n<li>Телевізор</li>\r\n<li>Санвузол з душовою кабіною</li>\r\n<li>Набір необхідних засобів гігієни у ванній кімнаті</li>\r\n<li>Рушники</li>\r\n<li>Балкон</li>\r\n</ul>|In the apartments of the hotel you get an exclusive VIP-rest for a relatively affordable price. In this category of rooms there is own kitchen area with everything needed for cooking. This is especially convenient for staying with small children. The room is equipped with its own living room.<br>\r\nBright, spacious rooms with modern furniture, bathroom with shower and a cosmetic set.<br>\r\n<table>\r\n<tr><td>Beds</td><td>1 large double bed and sofa</td></tr>\r\n<tr><td>Location</td><td>2 adults and 1 child</td></tr>\r\n</table>\r\n<br>\r\n<ul>\r\n<li>Consist of two rooms</li>\r\n<li>Hallway with a spacious wardrobe</li>\r\n<li>Living room</li>\r\n<li>Recreation area with table and two chairs</li>\r\n<li>Own kitchen, equipped with furniture, sink and a set of dishes</li>\r\n<li>1 large double bed and sofa</li>\r\n<li>Bedside tables</li>\r\n<li>TV</li>\r\n<li>Bathroom with shower</li>\r\n<li>Set of the required hygiene products in the bathroom</li>\r\n<li>Towels</li>\r\n<li>Balcony</li>\r\n</ul>|', 800.00, 13, '[]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-09 13:11:37'),
(42, 2, 'Люкс|Luxe|', 'Категорія номерів, передбачена для проживання VIP-клієнтів або бізнес-гостей при проведенні корпоративних конференцій та семінарів. Від інших категорій відрізняється в першу чергу відокремленою спальнею. В такому номері особливо зручно розміщуватися сім’ї з дітьми. Так, відпочиваючи разом, батьки та діти мають змогу проводити вільний час у номері, не заважаючи один одному. Також у цій категорії наявна власна вітальня.<br>\r\n<table>\r\n<tr><td>Ліжка</td><td>1 велике двоспальне і розкладний диван</td></tr>\r\n<tr><td>Розміщення</td><td>2 дорослих і 2 дітей</td></tr>\r\n</table>\r\n<br>\r\n<ul>\r\n<li>Двокімнатний номер з окремою спальнею</li>\r\n<li>Прихожа з просторою шафою для одягу</li>\r\n<li>Вітальня</li>\r\n<li>Зона відпочинку зі столиком і двома стільцями</li>\r\n<li>1 велике двоспальне і розкладний диван</li>\r\n<li>Приліжкові тумби</li>\r\n<li>Телевізор</li>\r\n<li>Санвузол з душовою кабіною</li>\r\n<li>Набір необхідних засобів гігієни у ванній кімнаті</li>\r\n<li>Рушники</li>\r\n<li>Балкон</li>\r\n</ul>|Room categories provided accommodation for VIP-clients or business guests during corporate conferences and seminars. From other categories differs primarily singled bedroom. In this room is conveniently placed especially families with children. So, relaxing together, parents and children are able to spend their free time in a room without interfering each other. Also in this categorythere is own living room.<br>\r\n<table>\r\n<tr><td>Beds</td><td>1 large double bed and sofa</td></tr>\r\n<tr><td>Location</td><td>2 adults and 2 children</td></tr>\r\n</table>\r\n<br>\r\n<ul>\r\n<li>Double room with separate bedroom</li>\r\n<li>Hallway with a spacious wardrobe</li>\r\n<li>Living room</li>\r\n<li>Recreation area with table and two chairs</li>\r\n<li>1 large double bed and sofa</li>\r\n<li>Bedside tables</li>\r\n<li>TV</li>\r\n<li>A bathroom with shower</li>\r\n<li>Set of the required hygiene products in the bathroom</li>\r\n<li>Towels</li>\r\n<li>Balcony</li>\r\n</ul>|', 1000.00, 3, '[]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-10 04:17:56'),
(43, 2, 'Дворівневі апартаменти|Duplex apartment|', 'Для дійсно ексклюзивного відпочинку пропонуємо зупинитися у дворівневих апартаментах. Є власна кухня, обладнана необхідними меблями та посудом, що дозволяє самостійно готувати у будь-який зручний час.<br>\r\nКомфортне м’яке ліжко, гармонічно підібрані під інтер’єр меблі, вид з номеру на гори, простора ванна кімната – це те, що незмінно доставляє фізичне та естетичне задоволення від відпочинку.<br>\r\n<table>\r\n<tr><td>Ліжка</td><td>1 велике двоспальне і розкладний диван</td></tr>\r\n<tr><td>Розміщення</td><td>2 дорослих і 1 дитина</td></tr>\r\n</table>\r\n<br>\r\n<ul>\r\n<li>Двокімнатний дворівневий номер</li>\r\n<li>Прихожа з просторою шафою для одягу</li>\r\n<li>Вітальня</li>\r\n<li>Зона відпочинку зі столиком і двома кріслами</li>\r\n<li>Власна кухня, обладнана меблями, раковиною та набором посуду</li>\r\n<li>1 велике двоспальне ліжко і розкладний диван</li>\r\n<li>Приліжкові тумби</li>\r\n<li>Телевізор</li>\r\n<li>Санвузол з душовою кабіною</li>\r\n</ul>|For a really exclusive holiday offer to stay in the duplex apartment. There is own kitchen, equipped with necessary furniture and utensils, allowing you to cook at any convenient time.<br>\r\nComfortable soft bed, harmoniously match the interior furniture, room view from the mountains, spacious bathroom - a fact that always delivers physical and aesthetic pleasureduring the holiday.<br>\r\n<table>\r\n<tr><td>Beds</td><td>1 large double bed and sofa</td></tr>\r\n<tr><td>Location</td><td>2 adults and 1 child</td></tr>\r\n</table>\r\n<br>\r\n<ul>\r\n<li>Two two-level rooms</li>\r\n<li>Hallway with a spacious wardrobe</li>\r\n<li>Living room</li>\r\n<li>Recreation area with table and two chairs</li>\r\n<li>Own kitchen, equipped with furniture, sink and a set of dishes</li>\r\n<li>1 large double bed and sofa</li>\r\n<li>Bedside tables</li>\r\n<li>TV</li>\r\n<li>Bathroom with shower</li>\r\n<li>Set of the required hygiene products in the bathroom</li>\r\n<li>Towels</li>\r\n<li>Balcony</li>\r\n</ul>|', 1200.00, 1, '["upload\\/articles\\/43\\/images\\/2T0A2228.jpg","upload\\/articles\\/43\\/images\\/2T0A2245.jpg","upload\\/articles\\/43\\/images\\/2T0A2310.jpg","upload\\/articles\\/43\\/images\\/apartaments with kitchen.jpg","upload\\/articles\\/43\\/images\\/apartaments with kitchen1.jpg","upload\\/articles\\/43\\/images\\/apartaments with kitchen3.jpg","upload\\/articles\\/43\\/images\\/watercloset apart.jpg"]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-10 04:18:41'),
(44, 3, 'Зовнішній басейн з підігрівом|Heated outdoor pool|', 'Інфраструктура готелю «Premium Club» влаштована так, що гості можуть з користю проводити час незалежно від сезону. Відпочинок літом надає Вам можливість скористатися послугами нашого відкритого басейну з підігрівом.<br>\r\nПереваги зовнішнього басейну у готелі «Premium Club»:\r\n<ul>\r\n<li>•	Відвідування басейну входить у вартість проживання.</li>\r\n<li>•	Безкоштовно надаємо шезлонги та рушники.</li>\r\n<li>•	У прохолодну та вітряну погоду працює система підігріву. Вода нагрівається до зручної для тіла температури – 26-28 градусів за Цельсієм.</li>\r\n<li>•	Розташований на відкритій галявині з панорамним краєвидом на гори.</li>\r\n<li>•	Обладнаний сучасною системою очищення води.</li>\r\n<ul>\r\nПлавання – це дієвий спосіб позбавитися від стресу, зміцнити нервову систему та покращити фізичну форму. Крім того, відкритий басейн дає можливість розміститись на шезлонзі біля води, милуватися краєвидом гір та пити прохолодні напої під теплими променями сонця.<br>\r\nЯкщо Ви плануєте сімейний відпочинок з дітьми, рекомендуємо взяти з собою іграшки і спорядження для купання.<br>\r\nВартість відвідування басейну:\r\n<ul>\r\n<li>•	Для мешканців готелю: безкоштовно.</li>\r\n<li>•	Для сторонніх відвідувачів: дорослі – 100 грн/2 години; діти старше 5 років – 50 грн/2 години. Для дітей віком до 5 років відвідування басейну безкоштовне.</li>\r\n<ul>\r\nПлаваючи, Ви зміцнюєте здоров''я і отримуєте задоволення. Насолоджуйтесь свіжим гірським повітрям і відчувайте приплив сил в готелі «Premium Club» у Яремчі.|Hotel «Premium Club» amenities are designed so that guests can spend their time usefully and regardless of the season.  Summer vacations give you an opportunity to make use of our heated outdoor pool.<br>\r\n    Advantages of external pool at «Premium Club»:\r\n<ul>\r\n<li>• Visiting of the pool is included in the price of living.</li>\r\n<li>• Deck-chairs and towels: free of charge.</li>\r\n<li>• In cold and windy weather a pool is heated. The water is warmed up to a comfortable for body temperature - 26-28 degrees on Celsius.</li>\r\n<li>• Located on an open lawn with panoramic mountain views.</li>\r\n<li>• Equipped with modern water purification system.</li>\r\n</ul>\r\n    Swimming is an effective way to relieve stress, strengthen the nervous system and improve a physical form. In addition, outdoor pool provides an opportunity to sit on the loungers near the water, enjoy views of mountains and drink soft drinks under the warm sun.<br>\r\nIf you are planning a family vacation with children, we recommend you to bring toys and gear for swimming.<br>\r\n The cost of swimming pool:\r\n<ul>\r\n<li>• For residents of the hotel: free of charge.</li>\r\n<li>• For other visitors: adults - 100 UAH / 2 hours; children older than 5 years - 50 UAH / 2 hours. For children under 5 years: free of charge.</li>\r\n</ul>\r\n    You strengthen health and have fun by swimming. Enjoy the fresh mountain air and improve your health in the hotel «Premium Club» in Yaremche.|', 100.00, 0, '["upload\\/articles\\/44\\/images\\/2T0A2176.jpg","upload\\/articles\\/44\\/images\\/2T0A2177.jpg","upload\\/articles\\/44\\/images\\/2T0A2180.jpg","upload\\/articles\\/44\\/images\\/2T0A2186.jpg"]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-10 04:30:52'),
(45, 3, 'Конференцзал|Conference hall|', 'Послугами готелю «Premium Club» у Яремчі регулярно користуються організації з метою проведення на його території різноманітних корпоративних заходів: семінарів, тренінгів, переговорів, презентацій або невеликих групових нарад.<br>\r\nПереваги використання конференц залу у готелі «Premium Club»:\r\n<ul>\r\n<li>•	Просторе приміщення загальною площею 40 м2.</li>\r\n<li>•	Зручне розташування. Конференц зал знаходиться на першому поверсі готелю.</li>\r\n<li>•	Підходить для досить численних заходів. Максимально допустима кількість місць для посадки – 40.</li>\r\n<li>•	У залі передбачене як природнє, так і штучне освітлення.</li>\r\n</ul>\r\nОсобливості територіального розташування готелю, його широка інфраструктура, сучасне технологічне обладнання, а також привітний і турботливий персонал забезпечать гостей заходу усім необхідним для роботи та відпочинку.<br>\r\nВартість використання конференц залу:\r\n<ul>\r\n<li>•	Для кожного заходу вартість бронювання розраховується індивідуально.</li>\r\n</ul>\r\nКонференц послуги від готелю «Premium Club» у Карпатах – це гарантія проведення Вашого корпоративного заходу на високому рівні.|Services of hotel "Premium Club" in Yaremche are regularly used by organizations for realization of various corporate events on its territory: seminars, trainings, negotiations, presentations or small group conferences.<br>\r\nAdvantages of a conference hall in the hotel «Premium Club»:\r\n<ul>\r\n<li>• Spacious apartment with total area of 40 m2.</li>\r\n<li>• Convenient location. Conference hall is located on the first floor.</li>\r\n<li>• Suitable for quite big events. The maximum number of seats – 40.</li>\r\n<li>• Both natural and artificial illumination is available.</li>\r\n</ul>\r\nFeatures of territorial location of the hotel, its extensive infrastructure, modern technical equipment and friendly and dedicated staff will provide guests with all necessities for work and leisure.<br>\r\nThe cost of using the conference hall:\r\n<ul>\r\n<li>• Price of the hall booking is accounted individually for each event.</li>\r\n</ul>\r\nConference services of the hotel «Premium Club» in Carpathians is the guarantee of realization of your corporate event at high level.|', 200.00, 0, '["upload\\/articles\\/45\\/images\\/conf2.jpg","upload\\/articles\\/45\\/images\\/conf3.jpg","upload\\/articles\\/45\\/images\\/conf4.jpg"]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-10 04:31:30'),
(46, 3, 'Парковка та охорона|Parking and guard|', 'Активний відпочинок у горах передбачає велику кількість походів та поїздок. Для зручності більшість відвідувачів «Premium Club» у Яремчі приїжджають на власному автомобілі, тому на території готелю облаштований зручний паркінг.<br>\r\nКрім надання нашим гостям комфортного проживання та достатнього вибору розваг, ми також піклуємося про рівень безпеки. З цією метою на території «Premium Club» цілодобово працює охорона.<br>\r\nПереваги автопарковки у готелі «Premium Club»:\r\n<ul>\r\n<li>•	Паркування входить у вартість проживання.</li>\r\n<li>•	Розташована прямо на території готелю, немає необхідності витрачати дорогоцінний час, щоб до неї дістатися.</li>\r\n<li>•	Облаштована достатня кількість місць для паркування машин.</li>\r\n<li>•	Проводиться цілодобовий відеонагляд. Камери працюють як на самій території готелю, так і за її межами.</li>\r\n</ul>\r\nОбираючи відпочинок у готелі «Premium Club» у Яремчі, Ви можете бути впевнені як у своїй безпеці, так і у збереженні свого авто та іншого цінного майна.|Active rest in mountains involves plenty of hikes and journeys. For convenience, most visitors of "Premium Club" in Yaremche come here by car, that’s why the hotel is equipped with a modern parking.<br>\r\nIn addition to providing our guests with comfortable accommodation and ample choice of entertainments, we also care about safety. For this purpose, we have a 24/7 security on the territory of «Premium Club».<br>\r\nAdvantages of car parking at the hotel «Premium Club»:\r\n<ul>\r\n<li>• Parking is included in the cost of residence.</li>\r\n<li>• Is located directly near the hotel, no need to waste precious time to get there.</li>\r\n<li>• Arranged sufficient quantity of parking lots.</li>\r\n<li>• A 24/7 video surveillance is held. Cameras work both on territory of hotel and beyond.</li>\r\n</ul>\r\nCost of car parking usage:\r\n<ul>\r\n<li>• For residents of the hotel: free of charge for the entire stay.</li>\r\n</ul>\r\nChoosing the hotel "Premium Club" in Yaremche for rest, you can repose both in the safety and in maintenance of your auto and other valuable property.|', 20.00, 0, '["upload\\/articles\\/46\\/images\\/2T0A2291.jpg","upload\\/articles\\/46\\/images\\/2T0A2293.jpg","upload\\/articles\\/46\\/images\\/2T0A2296.jpg"]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-10 04:33:03'),
(47, 3, 'Ресторан та бар|Restaurant and bar|', 'Готель «Premium Club» у Яремчі пропонує своїм гостям скористатися послугами ресторану та бару, розташованими на території. Сучасний інтер''єр, авторська кухня, затишна атмосфера, приємна музика та професійне обслуговування – у нас є все, щоб гості  отримували максимальний комфорт від відпочинку.<br>\r\n    Переваги ресторану/бару у готелі «Premium Club»:\r\n<ul>\r\n<li>•	Надзвичайно смачна кухня. Всі страви ми готуємо самостійно. Головний акцент нашої кухні – використання виключно свіжих та якісних продуктів.</li>\r\n<li>•	Багатонаціональне меню. Наші гості мають можливість обрати страви як національної української, так і європейської кухні.</li>\r\n<li>•	Широка карта напоїв у різних цінових категоріях.</li>\r\n<li>•	Стильний та сучасний дизайн, чудовий панорамний вид із вікон.</li>\r\n<li>•	Загальна місткість ресторану – 100 осіб. Так, завдяки достатній кількості місць для посадки наші гості ніколи не заважають один одному. У нашому ресторані є можливість без будь-якого дискомфорту одночасно розміститися численній компанії та романтичній парі для усамітненого відпочинку.</li>\r\n</ul>\r\n    Вартість відвідування ресторану:\r\n<ul>\r\n<li>•	Для мешканців готелю бронювання ресторану безкоштовне. Вартість страв та напоїв – згідно діючого прейскуранту.</li>\r\n</ul>\r\n    Обирайте відпочинок у готелі «Premium Club» у Яремчі, щоб удосталь насолодитися гірським повітрям, мальовничим краєвидом та авторською смачною кухнею.|Hotel «Premium Club» in Yaremche offers its guests to take advantage of the services of restaurant and bar, located on territory. Modern interior, authorial cuisine, cozy atmosphere, nice music and professional service – we have everything needed for a maximal comfort of our dear guests.<br>\r\n    Benefits of restaurant / bar in the hotel «Premium Club»:\r\n<ul>\r\n<li> Extremely delicious food. We cook all the dishes ourselves. The main rule of our kitchen is using only fresh and quality products.</li>\r\n<li>• Multinational menu. Our guests can choose dishes both of national Ukrainian and European cuisine.</li>\r\n<li>• Wide drinks card in different price categories.</li>\r\n<li>• Stylish and modern design, wonderful panoramic view from windows.</li>\r\n<li>• The total capacity of the restaurant - 100 people. So, due to sufficient number of seats our guests never interfere with each other. In our restaurant is possible to simultaneously accommodate numerous companies and romantic pair seeking for a secluded holiday without any discomfort.</li>\r\n</ul>\r\n    Cost of visiting the restaurant:\r\n<ul>\r\n<li>• For the habitants of hotel reserving of restaurant is free of charge. Cost of foods and drinks – according to the current price-list.</li>\r\n</ul>\r\nChoose a vacation at «Premium Club» in Yaremche to enjoy mountain air, picturesque landscape and authorial cuisine.|', 100.00, 0, '["upload\\/articles\\/47\\/images\\/rest.jpg","upload\\/articles\\/47\\/images\\/rest3.jpg"]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-07 19:11:57'),
(48, 3, 'Спа-зона|Spa zone|', 'Головне, що бажає відчути кожна людина після відпочинку у горах – гармонію, душевний спокій, позбавлення від стресу та заряд позитивної енергії. Найкращий спосіб, який допомагає досягти перерахованих відчуттів – проведення часу у зоні релаксу. Погодьтесь – немає нічого кращого, аніж морозним вечором зігрітись у бані, поплавати у басейні та випити чашку трав’яного чаю у компанії близьких.<br>\r\nКрім насолоди такий відпочинок приносить надзвичайну користь для здоров’я – виводить з організму шкідливі речовини, сприяє розслабленню та відновленню м’язів.<br>\r\nДля досягнення максимальної насолоди та оздоровлення відпочиваючих на території готелю «Premium Club» у Яремчі облаштована комфортабельна сучасна спа-зона.<br>\r\nЗона спа-відпочинку у «Premium Club» включає:\r\n<ul>\r\n<li>•	Хамам (турецьку баню), оформлену в оригінальному дизайні.</li>\r\n<li>•	Закритий басейн з підігрівом.</li>\r\n<li>•	Кімнату для відпочинку.</li>\r\n<li>•	Душові кабіни та санвузол.</li>\r\n<ul>\r\nМаксимальна кількість відвідувачів – 6 дорослих або 4 дорослих + 3 дітей.<br>\r\nВартість відвідування спа-зони:\r\n<ul>\r\n<li>•	У літній сезон – 300 грн/год.</li>\r\n<li>•	У зимовий період – 400 грн/год.</li>\r\n<li>•	Вказана вартість включає користування кімнатою відпочинку, турецькою банею, внутрішнім басейном, душовими кабінами та туалетом.</li>\r\n</ul>\r\nЗапрошуємо оздоровитися, отримати заряд сил та бадьорості у спа-зоні готелю ««Premium Club» у Карпатах.|Mainly, after the rest in mountains everyone wants to feel harmony, peace of mind, privation from stress and charge of positive energy. The best way to get these feelings is to spend time in the relaxation zone. Obviously, there is nothing better than to get warm in a bath-house, swim in the pool and drink a cup of herbal tea in the company of close friend in the frosty winter evening.<br>\r\nSuch rest is not only pleasant but really good for your health as well, as it destroys harmful substances in an organism, assists relaxation and restoring of muscles.<br>\r\nFor maximum enjoyment and recreation of tourists of the hotel «Premium Club» in Yaremche a comfortable modern spa area is equipped there.<br>\r\nZone of spa in «Premium Club» includes:\r\n<li>• Hamam (Turkish bath), decorated in the original design.</li>\r\n<li>• Indoor heated pool.</li>\r\n<li>• Lounge.</li>\r\n<li>• Showers and WC.</li>\r\nThe maximum number of visitors – 6 adults or 4 adults + 3 children.<br>\r\nThe cost of the spa zone:\r\n<li>• In the warm season – 300 UAH / hour.</li>\r\n<li>• In winter – 400 UAH / hour.</li>\r\n<li>• The price includes using of a lounge, Turkish bath, indoor swimming pool, shower and WC.</li>\r\nWe invite you to improve your health, get a boost of energy and strength in the spa of the hotel «Premium Club» in the Carpathians.|', 300.00, 0, '["upload\\/articles\\/48\\/images\\/2T0A2378.jpg","upload\\/articles\\/48\\/images\\/2T0A2392.jpg","upload\\/articles\\/48\\/images\\/hamam pool.jpg","upload\\/articles\\/48\\/images\\/hamam.jpg","upload\\/articles\\/48\\/images\\/hamam1.jpg","upload\\/articles\\/48\\/images\\/hamam3.jpg"]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-10 04:34:26'),
(49, 3, 'Спортивний зал|Gym|', 'Важлива частина інфраструктури готелю «Premium Club» у Яремчі – тренажерний зал. Ми знаємо: людина, яка слідкує за своєю фізичною формою та здоров’ям, навіть у період відпочинку не залишає спорт. Тому вирішили попіклуватися про своїх гостей та облаштувати комфортабельний спортивний зал з усім необхідним спорядженням.<br>\r\nПереваги тренажерного залу у готелі «Premium Club»:\r\n<ul>\r\n<li>•	Відвідування входить у вартість проживання.</li>\r\n<li>•	Якісне обладнання для різних видів фізичної активності: боксерська груша, велодоріжка, бігова доріжка, штанга, гантелі.</li>\r\n<li>•	Можна відвідувати у будь-який зручний час.</li>\r\n<li>•	Приміщення спортзалу має безпечне та зручне килимове покриття.</li>\r\n<li>•	Сучасна вентиляційна система, що гарантує свіже та чисте повітря у залі.</li>\r\n</ul>\r\nЗаняття спортом на місцевості з освіжаючим гірським кліматом – це можливість відновити гармонію тіла і духу під час відпочинку.<br>\r\nВартість відвідування спортзалу:\r\n<ul>\r\n<li>•	Для мешканців готелю: безкоштовно.</li>\r\n</ul>\r\nЧудовий вигляд і гарний настрій – показники якісного та корисного відпочинку. Насолоджуйтесь та оздоровлюйтесь разом з «Premium Club» у Яремчі.|Gym is an important part of the hotel «Premium Club» in Yaremche infrastructure. We know that everyone who cares about his physical form and health, even while vacations does not abandon sport. So we decided to take care of our guests and equip a comfortable gym with all necessary equipment.<br>\r\nAdvantages of the gym in the hotel «Premium Club»:\r\n<ul>\r\n<li>• Visiting included in the cost of residence.</li>\r\n<li>• High-quality equipment for different types of physical activity: punching bag, bicycle track, treadmill, barbell, dumbbells.</li>\r\n<li>• Is possible to visit in any convenient time.</li>\r\n<li>• Gym room has safe and comfortable carpet coverage.</li>\r\n<li>• Modern ventilation system that guarantees fresh and clean air in the room.</li>\r\n</ul>\r\nDoing sports in a refreshing mountain climate is a possibility to restore harmony of body and spirit during the rest.<br>\r\nThe cost of the gym:\r\n<ul>\r\n<li>• For residents of the hotel: free of charge.</li>\r\n</ul>\r\nA wonderful look and good mood are indicators of quality and useful rest. Enjoy and improve your health with «Premium Club» in Yaremche.|', 150.00, 0, '["upload\\/articles\\/49\\/images\\/2T0A2453.jpg","upload\\/articles\\/49\\/images\\/2T0A2456.jpg"]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-10 04:35:39'),
(50, 4, 'Святкування колективом Хмельницької Міської Першої Аптеки дня фармацевтичного працівника та здобутя ними звання "Аптека Року 2016"||Святкування колективом Хмельницької Міської Першої Аптеки дня фармацевтичного працівника та здобутя ними звання "Аптека Року 2016"||', 'Шановні фармацевтичні працівники!\r\nЩиро вітаємо Вас з професійним святом!\r\nВажливою і значущою є Ваша повсякденна, гуманна місія – забезпечувати людей ліками.\r\nВаш професіоналізм, вміння знаходити оптимальні рішення повертають людям здоров’я, додають впевненості у власних силах та віри в життя.\r\nПереконані, що ваша відданість справі, фаховий досвід, глибокі знання і динамізм завжди поєднуватимуться із щирим співчуттям до людей, милосердям та благодійністю у кращих гуманітарних традиціях.\r\nЗичимо вам усіляких гараздів, здійснення заповітних мрій, оптимізму, нових звершень і перемог!\r\nP.S. Окреме вітання адресоване Хмельницькій Міській Першій Аптеці зі здобуттям звання "Аптека Року 2016"!\r\nДякуємо, що обрали саме наш заклад для святкування цієї визначної дати! Цінуємо Ваш вибір і зробимо все, щоб цей день став частинкою приємних та щасливих спогадів у Вашому житті!|Dear pharmaceutical workers!\r\nWe congratulate you on your professional holiday!\r\nAn important and significant is your everyday, humane mission - to provide people medicine.\r\nYour professionalism, ability to find optimal solutions turn people''s health, give self-confidence and faith in life.\r\n    We are convinced that your dedication, professional experience, knowledge and dynamism always be combined with sincere compassion for people, compassion and charity in the best humanitarian tradition.\r\n    We wish you all the best, realization of the cherished dreams, optimism, new achievements and victories!\r\n    P.S. Special congratulations addressed Khmelnytsky City First pharmacy on winning the title of "Pharmacy of the Year 2016"!\r\n    Thank you chose our establishment to celebrate this outstanding date! We appreciate your choice and will do anything to become part of the day pleasant and happy memories in your life!|', 150.00, 0, '["upload\\/articles\\/50\\/images\\/DSC1654.JPG","upload\\/articles\\/50\\/images\\/DSC_1838.JPG","upload\\/articles\\/50\\/images\\/DSC_1937.JPG","upload\\/articles\\/50\\/images\\/DSC_1979.JPG","upload\\/articles\\/50\\/images\\/DSC_2005.JPG","upload\\/articles\\/50\\/images\\/DSC_2233.JPG"]', '2016-10-07 20:02:10', '||', '||', '||', 1, '2016-10-07 17:02:10', '2016-10-10 05:04:05'),
(51, 5, 'Поблизу готеля|Near hotel|', 'Опис|Description|', 0.00, 0, '["upload\\/articles\\/51\\/images\\/2T0A2176.jpg","upload\\/articles\\/51\\/images\\/2T0A2177.jpg","upload\\/articles\\/51\\/images\\/2T0A2302.jpg","upload\\/articles\\/51\\/images\\/2T0A2496.jpg","upload\\/articles\\/51\\/images\\/2T0A2497.jpg","upload\\/articles\\/51\\/images\\/2T0A2501.jpg"]', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-10 04:56:27', '2016-10-10 05:00:43'),
(52, 5, 'Фото готелю|Hotel''s photos|', 'Опис|Description|', 0.00, 0, '["upload\\/articles\\/52\\/images\\/2T0A2200.jpg","upload\\/articles\\/52\\/images\\/2T0A2213.jpg","upload\\/articles\\/52\\/images\\/2T0A2228.jpg","upload\\/articles\\/52\\/images\\/2T0A2243.jpg","upload\\/articles\\/52\\/images\\/2T0A2245.jpg","upload\\/articles\\/52\\/images\\/2T0A2257.jpg","upload\\/articles\\/52\\/images\\/2T0A2293.jpg","upload\\/articles\\/52\\/images\\/2T0A2304.jpg","upload\\/articles\\/52\\/images\\/2T0A2372.jpg","upload\\/articles\\/52\\/images\\/2T0A2378.jpg","upload\\/articles\\/52\\/images\\/hamam1.jpg"]', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-10 05:02:03', '2016-10-10 05:03:09');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `link`, `fields`, `created_at`, `updated_at`) VALUES
(1, 'Готелі', 'hotel', '["title","description","gallery"]', '2016-10-07 17:02:10', '2016-10-07 17:02:10'),
(2, 'Кімнати', 'rooms', '["title","description","gallery","price","quantity","active"]', '2016-10-07 17:02:10', '2016-10-07 17:02:10'),
(3, 'Послуги', 'services', '["title","description","meta_title","meta_description","gallery","active","price"]', '2016-10-07 17:02:10', '2016-10-07 17:02:10'),
(4, 'Події', 'events', '["title","description","meta_title","meta_description","gallery","date","active"]', '2016-10-07 17:02:10', '2016-10-07 17:02:10'),
(5, 'Галерея', 'gallery', '["title","description","meta_title","meta_description","gallery","date","active"]', '2016-10-07 17:02:10', '2016-10-07 17:02:10');

-- --------------------------------------------------------

--
-- Структура таблицы `langs`
--

CREATE TABLE IF NOT EXISTS `langs` (
  `id` int(10) unsigned NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `langs`
--

INSERT INTO `langs` (`id`, `lang`, `created_at`, `updated_at`) VALUES
(6, 'ua', '2016-10-07 17:02:10', '2016-10-07 17:02:10'),
(7, 'en', '2016-10-07 17:02:10', '2016-10-07 17:02:10');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_14_124503_create_articles_table', 1),
('2016_09_14_124813_create_categories_table', 1),
('2016_09_14_124942_create_langs_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `texts`
--

CREATE TABLE IF NOT EXISTS `texts` (
  `id` int(10) unsigned NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `lang_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `texts`
--

INSERT INTO `texts` (`id`, `page_id`, `type`, `title`, `description`, `priority`, `lang_active`, `created_at`, `updated_at`) VALUES
(5, 0, 'input', 'Контактний номер телефону', '<span class="phone-part">+38067</span> 3433400', 5, 0, '2016-10-07 17:02:10', '2016-10-09 10:32:13'),
(6, 0, 'input', 'Адреса', '78500, м.Яремче, вул Довбуша, 50, Івано-Франківська обл|78500, Yaremche, 50 Dovbush str, Ivano-Frankivsk region|', 5, 1, '2016-10-07 17:02:10', '2016-10-09 09:27:07'),
(7, 0, 'input', 'Пошта', 'premiumclub2016@gmail.com', 5, 1, '2016-10-07 17:02:10', '2016-10-07 17:02:10'),
(8, 0, 'textarea', 'Карта', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2646.2322262355638!2d24.54735901607702!3d48.452073679249864!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4737243786ff61dd%3A0xf33ec5bfe685c550!2z0LLRg9C70LjRhtGPINCe0LvQtdC60YHQuCDQlNC-0LLQsdGD0YjQsCwgNTAsINCv0YDQtdC80YfQtSwg0IbQstCw0L3Qvi3QpNGA0LDQvdC60ZbQstGB0YzQutCwINC-0LHQu9Cw0YHRgtGMLCDQo9C60YDQsNC40L3QsCwgNzg1MDA!5e0!3m2!1sru!2sru!4v1475842190928" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>|<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2646.2322262355638!2d24.54735901607702!3d48.452073679249864!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4737243786ff61dd%3A0xf33ec5bfe685c550!2z0LLRg9C70LjRhtGPINCe0LvQtdC60YHQuCDQlNC-0LLQsdGD0YjQsCwgNTAsINCv0YDQtdC80YfQtSwg0IbQstCw0L3Qvi3QpNGA0LDQvdC60ZbQstGB0YzQutCwINC-0LHQu9Cw0YHRgtGMLCDQo9C60YDQsNC40L3QsCwgNzg1MDA!5e0!3m2!1sru!2sru!4v1475842190928" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>|', 6, 1, '2016-10-07 17:02:10', '2016-10-09 10:20:45'),
(9, 0, 'input', 'Координати', 'N48.345186°,  E24.472768°', 0, 0, '2016-10-09 10:08:59', '2016-10-09 10:08:59');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'admin', 'raun@i.ua', '$2y$10$KCR5WbIyUHXgZbsthDHHHOJgtdcmTA2Um.eXHbRwnvBWRgcJN/0O.', 'ZZBDcS3aebNGy65YHHHxiD1Ff7dnKO8nc84Ackyf1432jMnA5hHawmCRKHmR', '2016-10-07 17:02:10', '2016-10-09 07:24:31'),
(6, 'root', 'webdesignstudio@gmail.com', '$2y$10$BdvnOe9NrHYCkipriMsBRuvfVrOGQI0oi7XzPHQSQ42pUpJGg4Q6y', NULL, '2016-10-07 17:02:10', '2016-10-07 17:02:10');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
