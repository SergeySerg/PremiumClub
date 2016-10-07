-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 07 2016 г., 21:16
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `description`, `price`, `quantity`, `imgs`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(1, 2, 'Економ|Econom|', 'Просторий номер, облаштований усім необхідним для приємного проживання гостей. Від стандартного номеру відрізняється наявністю вішалки для одягу замість прихожої з шафою. Інтер’єр світлих відтінків, сучасні меблі, власна ванна кімната з душовою кабіною і косметичним набором.\r\nНомер підходить для комфортного бюджетного відпочинку туристів, а також проживання працівників у відрядженні.\r\n\r\nЗручності у номері:\r\n•	Прихожа з вішалкою для одягу\r\n•	Зона відпочинку зі столиком і двома кріслами\r\n•	1 велике двоспальне або 2 окремих односпальних ліжка\r\n•	Приліжкові тумби\r\n•	Телевізор\r\n•	Санвузол з душовою кабіною\r\n•	Набір необхідних засобів гігієни у ванній кімнаті\r\n•	Рушники|Spacious room equipped with everything needed for a pleasant stay of guests. It differs from the standart room only by the clothes hangers instead of the hallwaywith closet. The interior isin bright colors, modern furniture, a private bathroom with a shower and a cosmetic set.\r\nIs suitable for a comfortable budget leisure of travelers and just forbusiness trips.\r\n\r\nAmenities in the room:\r\n•	Hallway with hanger\r\n•	Recreation zone with table and two chairs\r\n•	1 large double or 2 single beds\r\n•	Bedside tables\r\n•	TV\r\n•	Bathroom with shower\r\n•	Set of the required hygiene products in the bathroom\r\n•	Towels|', 200.00, 2, '[]', '2016-10-05 07:53:46', '||', '||', '||', 1, '2016-10-05 04:53:46', '2016-10-05 12:52:05'),
(2, 3, 'Дитяча ігрова кімната|Children''s playroom|', 'Дитяча ігрова кімната\r\nІнфраструктура готелю «Premium Club» у Яремчі спланована таким чином, щоб зробити сімейний відпочинок максимально цікавим та комфортним як для дітей, так і для їх батьків.\r\nГірське чисте повітря та чаруючий краєвид – це, безумовно, насолода найвищого ступеню. Проте далеко не кожну дитину можна зацікавити таким видом проводження часу.\r\nЩоб проживання було корисним абсолютно для кожного мешканця готелю, ми облаштували дитячу розважальну кімнату. Тут наші маленькі гості можуть активно провести вільний час. Дорослі ж мають змогу побути на самоті, знаючи, що їх діти перебувають у безпечному та цікавому місці. \r\nПереваги дитячої спортивної кімнати у готелі «Premium Club»:\r\n•	Відвідування входить у вартість проживання.\r\n•	Сучасне якісне обладнання для гри у настільний теніс і настільний футбол.\r\n•	Приміщення спортзалу має безпечне та зручне килимове покриття.\r\nВартість відвідування дитячої кімнати для ігор:\r\n•	Для мешканців готелю: безкоштовно.\r\nГотель «Premium Club» у Карпатах – місце для активного сімейного відпочинку у горах. Відпочивайте разом з нами.|The infrastructure of the hotel «Premium Club» in Yaremche is planned to make a family vacation maximally interesting and comfortable both for children and for their parents.\r\nClean mountain air and charming landscape – it is certainly an ultimate pleasure. But not every child may be interested in such type of pastime.\r\nTo make stay at the hotel absolutely beneficial for each resident, we arranged the children''s entertainment room. Here our little guests can actively spend their free time. Thus adults get the opportunity to stay alone, knowing that their children are in a safe and interesting place.\r\nBenefits of children''s sports room in the hotel «Premium Club»:\r\n• Visiting is included in the cost of residence.\r\n• Modern high quality equipment for table tennis and table football playing.\r\n• Sports room has a safe and comfortable carpet coverage.\r\nThe cost of visiting children''s playroom:\r\n• For residents of the hotel: free of charge.\r\nThe hotel «Premium Club» in the Carpathians is a place for an active family holiday in the mountains. Relax with us.|', 100.00, 0, '["upload\\/articles\\/2\\/images\\/2T0A2228.jpg","upload\\/articles\\/2\\/images\\/2T0A2257.jpg"]', '2016-10-05 07:53:46', '||', '||', '||', 1, '2016-10-05 04:53:46', '2016-10-05 16:40:16'),
(3, 4, 'Лекції лікаря стоматолога - Кулигіна Олега Борисовича|Day of Karpaty|', 'Кулигін Олег Борисович Завідувач відділенням терапевтичної стоматології, Кандидат медичних наук, Лікар-стоматолог-терапевт, ІІ категорія, Лікар-стоматолог-ортопед.\r\nСпеціалізується на наданні ендодонтичної допомоги з використанням операційного мікроскопу та конусно-променевого комп''ютерного томографу. Видалення зламаних інструментів із кореневих каналів. Закриття перфорації зуба. Діагностика стану кореневих каналів.|Full description day of Karpaty|', 0.00, 0, '[]', '2016-10-05 07:53:46', '||', '||', '||', 1, '2016-10-05 04:53:46', '2016-10-05 08:03:18'),
(4, 1, 'Яскравий відпочинок у Карпатах|Unforgettable rest in Carpathians|', 'Українські Карпати – улюблене місце цінителів активного відпочинку як влітку, так і взимку.\r\nВідпустка або вихідні в горах – це завжди незабутні краєвиди, чисті озера, високогірне повітря, стрімкі ріки та хвойні ліси, незалежно від пори року. \r\nЗима в Карпатах пропонує безліч гірськолижних курортів з трасами різних рівнів складності та незмінно якісним обслуговуванням. До вподоби тут відпочивати і лижникам, і сноубордистам, також можна покататися на санках.  Влітку гори пропонують безліч варіантів активного проводження часу: альпінізм, рибалку, піші походи, прогулянки на велосипеді або квадроциклі. Літній та весняний сезони – ідеальний час для еко відпочинку в Західній Україні. Осінь найкраще підходить для любителів полювань, збору ягід та грибів. Такою ж популярністю, як місцевий відпочинок, користується лікування на оздоровчих курортах. \r\nНеважливо, який сезон Ви обрали для відпочинку – Карпати завжди дарують безліч яскравих емоцій.\r\nЯремче – популярний серед українців гірськолижний курорт. Щороку тут відпочивають тисячі співвітчизників та іноземців. Але славиться він не лише природою. Регіон зарекомендував себе як один із найгостинніших і найпривітніших. Місцеве населення чудово ставиться до приїжджих, завжди радо зустрічає і забезпечує комфортабельний прийом. Відпочинок у Яремчі залишає після себе виключно теплі та приємні спогади.\r\n«Premium club» - комфортний готель у Карпатах\r\nУ горах та Прикарпатті є безліч варіантів готелів та котеджів, що пропонують свої послуги. Проте довіряти відпустку варто лише надійним та перевіреним. \r\nГотель «Premium club» пропонує відпочинок у затишному куточку України – курорті Яремче. Для Вас пропонуємо:\r\n•	Зручне розташування. Ми знаходимося неподалік від гірськолижних трас, що зручно для любителів активного зимнього відпочинку. \r\n•	54 облаштовані номери різних категорій. Пропонуємо варіанти в залежності від Ваших потреб та фінансових побажань. \r\n•	Простору територію та розвинену інфраструктуру готелю, що дозволяє гостям проводити час, не доставляючи дискомфорт один одному. «Premium club» підходить для дружніх компаній, для сімейної відпустки, а також для тих, хто бажає провести романтичний відпочинок в Карпатах на двох.\r\n•	Активно розвинений спортивно-оздоровчий комплекс. У нас є відкритий та внутрішній басейни, спа-зона з хамамом, спорт зал для дорослих, кімната відпочинку для дітей. \r\n•	Ресторан та бар з авторською кухнею, широкою картою напоїв та першокласним сервісом.\r\n•	Сучасно обладнаний конференц зал для проведення різноманітних корпоративних заходів.\r\nБронюйте номер у готелі «Premium club» у Яремчі – ми надаємо VIP-відпочинок в Карпатах за доступною ціною.|Ukrainian Carpathians are known to be the favorite place of judges of active rest both in summer, and in winter.Vacation or weekend in the mountains - it''s always unforgettable views, clean lakes, mountain air, abundant rivers and pine forests, regardless of the season.\r\nWinter in Carpathians offers many ski resorts with slopes of different difficulty levels and consistently good service. Skiers, and snowboarders likes to stay here.It is also possible to drive on sledges. In summertime mountains offer many options for active pastime: climbing, fishing, hiking, walks on a bicycle or quads. Summer and spring seasons are the perfect time for eco vacation in Western Ukraine. Autumn is best suited for fans of hunting, gathering berries and mushrooms. Equally popular as a local holiday is treatment at health resorts.\r\nNo matter which season you choose to rest – Carpathians always give a lot of bright emotions.\r\nYaremche is a popular Ukrainian ski resort. Annually thousands of compatriots and foreigners have a rest here. But it is famous not only for its nature. The region has established itself as one of the most hospitable and friendliest. A local population treats visitors very nice and pleasantly, always gladly meets and provides a comfortable reception.Rest in Yaremcheleaves only warm and pleasant memories.\r\n«Premium Club» - comfortable hotel in the Carpathians\r\nThere are many hotels and cottages in the mountains and the Carpathian region.However,tourists should trust only to reliable and tested ones.\r\nHotel «Premium Club» offers a vacation in a cozy corner of Ukraine – the resort Yaremche. We offer:\r\n• Convenient location. We are located near the ski slopes, which is convenient for fans of the winter active holidays.\r\n• 54 furnished rooms of different categories. We offer variants depending on your needs and financial wishes.\r\n• Spacious area and developed infrastructure of the hotel allow guests to spend time without bringing discomfort to each other. «Premium Club» is suitable for friendly companies, for a family vacation, and for those who wish to spend a romantic holiday for two in the Carpathian Mountains.\r\n• Well-developed sports complex. We have an outdoor and indoor pools, a spa zone with hammam, gym for adultsand sport’s room for children.\r\n• Restaurant and bar with authorial cuisine, extensive drinks card and first class service.\r\n• Modernly equipped conference hall for various corporate events.\r\nBook a room inthe hotel «Premium club» in Yaremche and we will provide a VIP-rest in the Carpathians for an affordable price.|', 0.00, 0, '["upload\\/articles\\/4\\/images\\/2T0A2176.jpg","upload\\/articles\\/4\\/images\\/2T0A2180.jpg","upload\\/articles\\/4\\/images\\/2T0A2200.jpg","upload\\/articles\\/4\\/images\\/2T0A2213.jpg","upload\\/articles\\/4\\/images\\/2T0A2228.jpg","upload\\/articles\\/4\\/images\\/2T0A2245.jpg","upload\\/articles\\/4\\/images\\/2T0A2257.jpg"]', '0000-00-00 00:00:00', '||', '||', '||', 0, '2016-10-05 06:05:57', '2016-10-05 16:19:11'),
(5, 2, 'Стандарт з балконом|Standard with balcony|', 'Найпопулярніша категорія для відпочинку у нашому готелі. Просторий номер, облаштований усім необхідним для комфортабельного розміщення відпочиваючих.\r\n У цій категорії номерів на Вас очікує стильний інтер’єр світлих відтінків, сучасні нові меблі (в тому числі зручне велике ліжко), індивідуальна ванна кімната з сучасною душовою кабіною та косметичним набором, балкон з панорамним видом на регіон Карпат.\r\n\r\nЗручності у номері:\r\n•	Прихожа з просторою шафою для одягу\r\n•	Зона відпочинку зі столиком і двома кріслами\r\n•	1 велике двоспальне або 2 окремих односпальних ліжка\r\n•	Приліжкові тумби\r\n•	Телевізор\r\n•	Санвузол з душовою кабіною\r\n•	Набір необхідних засобів гігієни у ванній кімнаті\r\n•	Рушники\r\n•	Балкон|The most popular category of stay in our hotel. Spacious room, equipped with everything necessary for comfortable accommodation of tourists.\r\nRooms In this category have stylish interior in bright colors, modern new furniture (including comfortable double bed), individual bathroom with a modern shower and a cosmetic set, balcony with panoramic views of the Carpathian region.\r\n\r\nAmenities in the room:\r\n• Hallway with a spacious wardrobe\r\n• Recreation zone with table and two chairs\r\n• 1 large double or 2 single beds\r\n• Bedside tables\r\n• TV\r\n• Bathroom with shower\r\n• Set of the required hygiene products in the bathroom\r\n• Towels\r\n• Balcony|', 400.00, 32, '["upload\\/articles\\/5\\/images\\/2T0A2378.jpg","upload\\/articles\\/5\\/images\\/standart wiyh balcon.jpg","upload\\/articles\\/5\\/images\\/standart.jpg"]', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-05 06:23:45', '2016-10-05 18:03:01'),
(6, 2, 'Напівлюкс|Junior|', 'Номер високого рівня комфорту. Чудовий вигляд із балкону. Оптимальний варіант розміщення для сімейного відпочинку з дітьми. Просторий, зручного та продумано обладнаний номер не створює незручностей при сумісному проживання. \r\nУ кожній кімнаті цієї категорії – дизайнерський сучасний інтер’єр у світлих тонах, достатній рівень освітлення (як штучного, так и природнього), панорамний вид з вікон та балкону.\r\n\r\nЗручності у номері:\r\n•	Прихожа з просторою шафою для одягу\r\n•	Зона відпочинку зі столиком і двома кріслами\r\n•	1 велике двоспальне ліжко і розкладний диван \r\n•	Приліжкові тумби\r\n•	Телевізор\r\n•	Санвузол з душовою кабіною\r\n•	Набір необхідних засобів гігієни у ванній кімнаті\r\n•	Рушники\r\n•	Балкон|Room of high level of comfort. Wonderful view from the balcony. The best accommodation option for families with children. Spacious, comfortable and thoughtfully equipped room creates inconveniences during cohabitation.\r\nEach room in this category has a modern design in bright colors, adequate lighting (both artificial and natural), panoramic view from windows and balcony.\r\n\r\nAmenities in the room:\r\n• Hallway with a spacious wardrobe\r\n• Recreation zone with table and two chairs\r\n• 1 large double bed and sofa\r\n• Bedside tables\r\n• TV\r\n• Bathroom with shower\r\n• Set the required hygiene products in the bathroom\r\n• Towels\r\n• Balcony|', 600.00, 3, '', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-05 06:55:24', '2016-10-05 06:55:24'),
(7, 2, 'Апартаменти|Apartment|', 'Проживання у апартаментах нашого готелю забезпечить Вам ексклюзивний VIP-відпочинок за відносно доступною ціною. Ця категорія номерів передбачає наявність власної кухонної зони з усім необхідним для приготування їжі. Особливо це зручно при проживанні з маленькими дітьми. У номері облаштована власна вітальня.\r\nСвітлі, просторі номери з сучасними меблями, ванна кімната з душовою кабіною та косметичним набором. \r\n\r\nЗручності у номері:\r\n•	Двокімнатний номер\r\n•	Прихожа з просторою шафою для одягу\r\n•	Вітальня\r\n•	Зона відпочинку зі столиком і двома кріслами\r\n•	Власна кухня, облаштована меблями, раковиною та набором посуду\r\n•	1 велике двоспальне ліжко і розкладний диван\r\n•	Приліжкові тумби\r\n•	Телевізор\r\n•	Санвузол з душовою кабіною\r\n•	Набір необхідних засобів гігієни у ванній кімнаті\r\n•	Рушники\r\n•	Балкон|In the apartments of the hotel you get an exclusive VIP-rest for a relatively affordable price. In this category of rooms there is own kitchen area with everything needed for cooking. This is especially convenient for staying with small children. The room is equipped with its own living room.\r\nBright, spacious rooms with modern furniture, bathroom with shower and a cosmetic set.\r\n\r\nAmenities in the room:\r\n• Consist of two rooms\r\n• Hallway with a spacious wardrobe\r\n• Living room\r\n• Recreation area with table and two chairs\r\n• Own kitchen, equipped with furniture, sink and a set of dishes\r\n• 1 large double bed and sofa\r\n• Bedside tables\r\n• TV\r\n• Bathroom with shower\r\n• Set of the required hygiene products in the bathroom\r\n• Towels\r\n• Balcony|', 800.00, 13, '["upload\\/articles\\/7\\/images\\/apartaments with kitchen.jpg","upload\\/articles\\/7\\/images\\/apartaments with kitchen1.jpg","upload\\/articles\\/7\\/images\\/apartaments with kitchen3.jpg","upload\\/articles\\/7\\/images\\/watercloset apart.jpg"]', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-05 06:56:15', '2016-10-05 18:11:15'),
(8, 2, 'Люкс|Luxe|', 'Категорія номерів, передбачена для проживання VIP-клієнтів або бізнес-гостей при проведенні корпоративних конференцій та семінарів. Від інших категорій відрізняється в першу чергу виокремленою спальнею. В такому номері особливо зручно розміщуватися сім’ї з дітьми. Так, відпочиваючи разом, батьки та діти мають змогу проводити вільний час у номері, не заважаючи один одному. Також у цій категорії наявна власна вітальня.\r\n\r\nЗручності у номері:\r\n•	Двокімнатний номер з окремою спальнею\r\n•	Прихожа з просторою шафою для одягу\r\n•	Вітальня\r\n•	Зона відпочинку зі столиком і двома кріслами\r\n•	1 велике двоспальне і розкладний диван\r\n•	Приліжкові тумби\r\n•	Телевізор\r\n•	Санвузол з душовою кабіною\r\n•	Набір необхідних засобів гігієни у ванній кімнаті\r\n•	Рушники\r\n•	Балкон|Room categories provided accommodation for VIP-clients or business guests during corporate conferences and seminars. From other categories differs primarily singled bedroom. In this room is conveniently placed especially families with children. So, relaxing together, parents and children are able to spend their free time in a room without interfering each other. Also in this categorythere is own living room.\r\n	\r\nAmenities in the room:\r\n• Double room with separate bedroom\r\n• Hallway with a spacious wardrobe\r\n• Living room\r\n• Recreation area with table and two chairs\r\n• 1 large double bed and sofa\r\n• bedside tables\r\n• TV\r\n• A bathroom with shower\r\n• Set of the required hygiene products in the bathroom\r\n• Towels\r\n• Balcony|', 1000.00, 3, '', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-05 07:05:52', '2016-10-05 07:05:52'),
(9, 2, 'Дворівневі апартаменти|Duplex apartment|', 'Для дійсно ексклюзивного відпочинку пропонуємо зупинитися у дворівневих апартаментах. Є власна кухня, облаштована необхідними меблями та посудом, що дозволяє самостійно готувати у будь-який зручний час. \r\nКомфортне м’яке ліжко, гармонічно підібрані під інтер’єр меблі, вид з номеру на гори, простора ванна кімната – це те, що незмінно доставляє фізичне та естетичне задоволення від відпочинку. \r\n\r\nЗручності у номері:\r\n•	Двокімнатний дворівневий номер\r\n•	Прихожа з просторою шафою для одягу\r\n•	Вітальня\r\n•	Зона відпочинку зі столиком і двома кріслами\r\n•	Власна кухня, облаштована меблями, раковиною та набором посуду\r\n•	1 велике двоспальне ліжко і розкладний диван\r\n•	Приліжкові тумби\r\n•	Телевізор\r\n•	Санвузол з душовою кабіною|For a really exclusive holiday offer to stay in the duplex apartment. There is own kitchen, equipped with necessary furniture and utensils, allowing you to cook at any convenient time.\r\nComfortable soft bed, harmoniously match the interior furniture, room view from the mountains, spacious bathroom - a fact that always delivers physical and aesthetic pleasureduring the holiday.\r\n\r\nAmenities in the room:\r\n• Two two-level rooms\r\n• Hallway with a spacious wardrobe\r\n• Living room\r\n• Recreation area with table and two chairs\r\n• Own kitchen, equipped with furniture, sink and a set of dishes\r\n• 1 large double bed and sofa\r\n• bedside tables\r\n• TV\r\n• Bathroom with shower\r\n• Set of the required hygiene products in the bathroom\r\n• Towels\r\n• Balcony|', 1200.00, 1, '', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-05 07:06:52', '2016-10-05 07:06:52'),
(10, 3, 'Зовнішній басейн з підігрівом|Heated outdoor pool|', 'Інфраструктура готелю «Premium Club» влаштована так, що гості можуть з користю проводити час незалежно від сезону. Відпочинок літом надає Вам можливість скористатися послугами нашого відкритого басейну з підігрівом. \r\nПереваги зовнішнього басейну у готелі «Premium Club»:\r\n•	Відвідування басейну входить у вартість проживання.\r\n•	Безкоштовно надаємо шезлонги та рушники.\r\n•	У прохолодну та вітряну погоду працює система підігріву. Вода нагрівається до зручної для тіла температури – 26-28 градусів за Цельсієм.\r\n•	Розташований на відкритій галявині з панорамним краєвидом на гори.\r\n•	Обладнаний сучасною системою очищення води.\r\nПлавання – це дієвий спосіб позбавитися від стресу, зміцнити нервову систему та покращити фізичну форму. Крім того, відкритий басейн дає можливість розташуватися на шезлонзі біля води, милуватися краєвидом гір та пити прохолодні напої під теплими променями сонця. \r\nЯкщо Ви плануєте сімейний відпочинок з дітьми, рекомендуємо взяти з собою іграшки і спорядження для купання.\r\nВартість відвідування басейну:\r\n•	Для мешканців готелю: безкоштовно.\r\n•	Для сторонніх відвідувачів: дорослі – 100 грн/2 години; діти старше 5 років – 50 грн/2 години. Для дітей віком до 5 років відвідування басейну безкоштовне.\r\nПлаваючи, Ви зміцнюєте здоров''я і отримуєте задоволення. Насолоджуйтесь свіжим гірським повітрям і оздоровлюйтеся в готелі «Premium Club» у Яремчі.|Hotel «Premium Club» amenities are designed so that guests can spend their time usefully and regardless of the season.  Summer vacations give you an opportunity to make use of our heated outdoor pool.\r\nAdvantages of external pool at «Premium Club»:\r\n• Visiting of the pool is included in the price of living.\r\n• Deck-chairs and towels: free of charge.\r\n• In cold and windy weather a pool is heated. The water is warmed up to a comfortable for body temperature - 26-28 degrees on Celsius.\r\n• Located on an open lawn with panoramic mountain views.\r\n• Equipped with modern water purification system.\r\nSwimming is an effective way to relieve stress, strengthen the nervous system and improve a physical form. In addition, outdoor pool provides an opportunity to sit on the loungers near the water, enjoy views of mountains and drink soft drinks under the warm sun.\r\nIf you are planning a family vacation with children, we recommend you to bring toys and gear for swimming.\r\nThe cost of swimming pool:\r\n• For residents of the hotel: free of charge.\r\n• For other visitors: adults - 100 UAH / 2 hours; children older than 5 years - 50 UAH / 2 hours. For children under 5 years: free of charge.\r\nYou strengthen health and have fun by swimming. Enjoy the fresh mountain air and improve your health in the hotel «Premium Club» in Yaremche.|', 100.00, 0, '["upload\\/articles\\/10\\/images\\/2T0A2177.jpg","upload\\/articles\\/10\\/images\\/2T0A2180.jpg","upload\\/articles\\/10\\/images\\/2T0A2186.jpg"]', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-05 07:27:58', '2016-10-05 16:36:43'),
(11, 3, 'Конференц-зал|Conference hall|', 'Послугами готелю «Premium Club» у Яремчі регулярно користуються організації з метою проведення на його території різноманітних корпоративних заходів: семінарів, тренінгів, переговорів, презентацій або невеликих групових нарад.\r\nПереваги використання конференц залу у готелі «Premium Club»:\r\n•	Просторе приміщення загальною площею 40 м2.\r\n•	Зручне розташування. Конференц зал знаходиться на першому поверсі готелю. \r\n•	Підходить для досить численних заходів. Максимально допустима кількість місць для посадки – 40. \r\n•	У залі передбачене як природнє, так і штучне освітлення. \r\nОсобливості територіального розташування готелю, його широка інфраструктура, сучасне технологічне обладнання, а також привітний і турботливий персонал забезпечать гостей заходу усім необхідним для роботи та відпочинку.\r\nВартість використання конференц залу:\r\n•	Для кожного заходу вартість бронювання розраховується індивідуально.\r\nКонференц послуги від готелю «Premium Club» у Карпатах – це гарантія проведення Вашого корпоративного заходу на високому рівні.|Services of hotel "Premium Club" in Yaremche are regularly used by organizations for realization of various corporate events on its territory: seminars, trainings, negotiations, presentations or small group conferences.\r\nAdvantages of a conference hall in the hotel «Premium Club»:\r\n• Spacious apartment with total area of 40 m2.\r\n• Convenient location. Conference hall is located on the first floor.\r\n• Suitable for quite big events. The maximum number of seats – 40.\r\n• Both natural and artificial illumination is available.\r\nFeatures of territorial location of the hotel, its extensive infrastructure, modern technical equipment and friendly and dedicated staff will provide guests with all necessities for work and leisure.\r\nThe cost of using the conference hall:\r\n• Price of the hall booking is accounted individually for each event.\r\nConference services of the hotel «Premium Club» in Carpathians is the guarantee of realization of your corporate event at high level.|', 200.00, 0, '["upload\\/articles\\/11\\/images\\/conf2.jpg","upload\\/articles\\/11\\/images\\/conf3.jpg","upload\\/articles\\/11\\/images\\/conf4.jpg"]', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-05 07:29:21', '2016-10-05 16:52:15'),
(12, 3, 'Парковка та охорона|Parking and guard|', 'Активний відпочинок у горах передбачає велику кількість походів та поїздок. Для зручності більшість відвідувачів «Premium Club» у Яремчі приїжджають на власному автомобілі, тому на території готелю облаштований зручний паркінг.\r\nКрім надання нашим гостям комфортного проживання та достатнього вибору розваг, ми також піклуємося про рівень безпеки. З цією метою на території «Premium Club» цілодобово працює охорона.\r\nПереваги автопарковки у готелі «Premium Club»:\r\n•	Паркування входить у вартість проживання.\r\n•	Розташована прямо на території готелю, немає необхідності витрачати дорогоцінний час, щоб її дістатися. \r\n•	Облаштована достатня кількість місць для паркування машин.\r\n•	Проводиться цілодобовий відеонагляд. Камери працюють як на самій території готелю, так і за її межами.\r\nВартість користування стоянкою для автомобілів:\r\n•	Для мешканців готелю: безкоштовно на весь період проживання.\r\nОбираючи відпочинок у готелі «Premium Club» у Яремчі, Ви можете бути впевнені як у своїй безпеці, так і у збереженні свого авто та іншого цінного майна.|Active rest in mountains involves plenty of hikes and journeys. For convenience, most visitors of "Premium Club" in Yaremche come here by car, that’s why the hotel is equipped with a modern parking.\r\nIn addition to providing our guests with comfortable accommodation and ample choice of entertainments, we also care about safety. For this purpose, we have a 24/7 security on the territory of «Premium Club».\r\nAdvantages of car parking at the hotel «Premium Club»:\r\n• Parking is included in the cost of residence.\r\n• Is located directly near the hotel, no need to waste precious time to get there.\r\n• Arranged sufficient quantity of parking lots.\r\n• A 24/7 video surveillance is held. Cameras work both on territory of hotel and beyond.\r\nCost of car parking usage:\r\n• For residents of the hotel: free of charge for the entire stay.\r\nChoosing the hotel "Premium Club" in Yaremche for rest, you can repose both in the safety and in maintenance of your auto and other valuable property.|', 20.00, 0, '["upload\\/articles\\/12\\/images\\/2T0A2291.jpg","upload\\/articles\\/12\\/images\\/2T0A2293.jpg","upload\\/articles\\/12\\/images\\/2T0A2296.jpg"]', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-05 07:30:49', '2016-10-05 16:37:42'),
(13, 3, 'Ресторан та бар|Restaurant and bar|', 'Готель «Premium Club» у Яремчі пропонує своїм гостям скористатися послугами ресторану та бару, розташованими на території. Сучасний інтер''єр, авторська кухня, затишна атмосфера, приємна музика та професійне обслуговування – у нас є все, щоб гості  отримували максимальний комфорт від відпочинку.\r\nПереваги ресторану/бару у готелі «Premium Club»:\r\n•	Надзвичайно смачна кухня. Всі страви ми готуємо самостійно. Головний акцент нашої кухні – використання виключно свіжих та якісних продуктів.\r\n•	Багатонаціональне меню. Наші гості мають можливість обрати страви як національної української, так і європейської кухні.\r\n•	Широка карта напоїв у різних цінових категоріях.\r\n•	Стильний та сучасний дизайн, чудовий панорамний вид із вікон.\r\n•	Загальна місткість ресторану – 100 осіб. Так, завдяки достатній кількості місць для посадки наші гості ніколи не заважають один одному. У нашому ресторані є можливість без будь-якого дискомфорту одночасно розміститися численній компанії та романтичній парі для усамітненого відпочинку.\r\nВартість відвідування ресторану:\r\n•	Для мешканців готелю бронювання ресторану безкоштовне. Вартість страв та напоїв – згідно діючого прейскуранту. \r\nОбирайте відпочинок у готелі «Premium Club» у Яремчі, щоб удосталь насолодитися гірським повітрям, мальовничим краєвидом та авторською смачною кухнею.|Hotel «Premium Club» in Yaremche offers its guests to take advantage of the services of restaurant and bar, located on territory. Modern interior, authorial cuisine, cozy atmosphere, nice music and professional service – we have everything needed for a maximal comfort of our dear guests.\r\nBenefits of restaurant / bar in the hotel «Premium Club»:\r\n• Extremely delicious food. We cook all the dishes ourselves. The main rule of our kitchen is using only fresh and quality products.\r\n• Multinational menu. Our guests can choose dishes both of national Ukrainian and European cuisine.\r\n• Wide drinks card in different price categories.\r\n• Stylish and modern design, wonderful panoramic view from windows.\r\n• The total capacity of the restaurant - 100 people. So, due to sufficient number of seats our guests never interfere with each other. In our restaurant is possible to simultaneously accommodate numerous companies and romantic pair seeking for a secluded holiday without any discomfort.\r\nCost of visiting the restaurant:\r\n• For the habitants of hotel reserving of restaurant is free of charge. Cost of foods and drinks – according to the current price-list.\r\nChoose a vacation at «Premium Club» in Yaremche to enjoy mountain air, picturesque landscape and authorial cuisine.|', 100.00, 0, '["upload\\/articles\\/13\\/images\\/launch.jpg","upload\\/articles\\/13\\/images\\/rest.jpg","upload\\/articles\\/13\\/images\\/rest3.jpg"]', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-05 07:53:16', '2016-10-05 17:01:24'),
(14, 3, 'Спа-зона|Spa zone|', 'Головне, що бажає відчути кожна людина після відпочинку у горах – гармонію, душевний спокій, позбавлення від стресу та заряд позитивної енергії. Найкращий спосіб, що допомагає досягти перерахованих відчуттів – проведення часу у зоні релаксу. Погодьтесь – немає нічого кращого, аніж морозним вечором зігрітись у бані, поплавати у басейні та випити чашку трав’яного чаю у компанії близьких. \r\nКрім насолоди такий відпочинок приносить надзвичайну користь для здоров’я – виводить з організму шкідливі речовини, сприяє розслабленню та відновленню м’язів. \r\nДля досягнення максимальної насолоди та оздоровлення відпочиваючих на території готелю «Premium Club» у Яремчі облаштована комфортабельна сучасна спа-зона.\r\nЗона спа-відпочинку у «Premium Club» включає:\r\n•	Хамам (турецьку баню), оформлену в оригінальному дизайні. \r\n•	Закритий басейн з підігрівом. \r\n•	Кімнату для відпочинку.\r\n•	Душові кабіни та санвузли.\r\nМаксимальна кількість відвідувачів – 6 дорослих або 4 дорослих + 3 дітей.\r\nВартість відвідування спа-зони:\r\n•	У теплий сезон – 300 грн/год. \r\n•	У зимовий період – 400 грн/год.\r\n•	Вказана вартість включає користування кімнатою відпочинку, турецькою банею, внутрішнім басейном, душовими кабінами та туалетом.\r\nЗапрошуємо оздоровитися, отримати заряд сил та бадьорості у спа-зоні готелю ««Premium Club» у Карпатах.|Mainly, after the rest in mountains everyone wants to feel harmony, peace of mind, privation from stress and charge of positive energy. The best way to get these feelings is to spend time in the relaxation zone. Obviously, there is nothing better than to get warm in a bath-house, swim in the pool and drink a cup of herbal tea in the company of close friend in the frosty winter evening.\r\nSuch rest is not only pleasant but really good for your health as well, as it destroys harmful substances in an organism, assists relaxation and restoring of muscles. \r\nFor maximum enjoyment and recreation of tourists of the hotel «Premium Club» in Yaremche a comfortable modern spa area is equipped there. \r\nZone of spa in «Premium Club» includes:\r\n• Hamam (Turkish bath), decorated in the original design.\r\n• Indoor heated pool.\r\n• Lounge.\r\n• Showers and WC.\r\nThe maximum number of visitors – 6 adults or 4 adults + 3 children.\r\nThe cost of the spa zone:\r\n• In the warm season – 300 UAH / hour.\r\n• In winter – 400 UAH / hour.\r\n• The price includes using of a lounge, Turkish bath, indoor swimming pool, shower and WC.\r\nWe invite you to improve your health, get a boost of energy and strength in the spa of the hotel «Premium Club» in the Carpathians.|', 300.00, 0, '["upload\\/articles\\/14\\/images\\/2T0A2302.jpg","upload\\/articles\\/14\\/images\\/2T0A2372.jpg","upload\\/articles\\/14\\/images\\/2T0A2378(1).jpg","upload\\/articles\\/14\\/images\\/2T0A2378.jpg","upload\\/articles\\/14\\/images\\/2T0A2392(1).jpg","upload\\/articles\\/14\\/images\\/2T0A2392.jpg","upload\\/articles\\/14\\/images\\/hamam pool.jpg","upload\\/articles\\/14\\/images\\/hamam.jpg","upload\\/articles\\/14\\/images\\/hamam1.jpg","upload\\/articles\\/14\\/images\\/hamam3.jpg"]', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-05 07:54:37', '2016-10-05 18:38:24'),
(15, 3, 'Спорт зал|Gym|', 'Важлива частина інфраструктури готелю «Premium Club» у Яремчі – тренажерний зал. Ми знаємо: людина, яка слідкує за своєю фізичною формою та здоров’ям, навіть у період відпочинку не залишає спорт. Тому вирішили попіклуватися про своїх гостей та облаштувати комфортабельний спортивний зал с усім необхідним спорядженням.\r\nПереваги тренажерного залу у готелі «Premium Club»:\r\n•	Відвідування входить у вартість проживання.\r\n•	Якісне обладнання для різних видів фізичної активності: боксерська груша, велодоріжка, бігова доріжка, штанга, гантелі.\r\n•	Можна відвідувати у будь-який зручний час. \r\n•	Приміщення спортзалу має безпечне та зручне килимове покриття.\r\n•	Сучасна вентиляційна система, що гарантує свіже та чисте повітря у залі. \r\nЗаняття спортом на місцевості з освіжаючим гірським кліматом – це можливість відновити гармонію тіла і духу під час відпочинку.\r\nВартість відвідування спортзалу:\r\n•	Для мешканців готелю: безкоштовно.\r\nЧудовий вигляд і настрій – показники якісного та корисного відпочинку. Насолоджуйтесь та оздоровлюйтесь разом з «Premium Club» у Яремчі.|Gym is an important part of the hotel «Premium Club» in Yaremche infrastructure. We know that everyone who cares about his physical form and health, even while vacations does not abandon sport. So we decided to take care of our guests and equip a comfortable gym with all necessary equipment.\r\nAdvantages of the gym in the hotel «Premium Club»:\r\n• Visiting included in the cost of residence.\r\n• High-quality equipment for different types of physical activity: punching bag, bicycle track, treadmill, barbell, dumbbells.\r\n• Is possible to visit in any convenient time.\r\n• Gym room has safe and comfortable carpet coverage.\r\n• Modern ventilation system that guarantees fresh and clean air in the room.\r\nDoing sports in a refreshing mountain climate is a possibility to restore harmony of body and spirit during the rest.\r\nThe cost of the gym:\r\n• For residents of the hotel: free of charge.\r\nA wonderful look and good mood are indicators of quality and useful rest. Enjoy and improve your health with «Premium Club» in Yaremche.|', 150.00, 0, '["upload\\/articles\\/15\\/images\\/2T0A2453.jpg","upload\\/articles\\/15\\/images\\/2T0A2456.jpg"]', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-05 07:56:52', '2016-10-05 16:39:37'),
(16, 4, 'Святкування колективом Хмельницької Міської Першої Аптеки дня фармацевтичного працівника та здобутя ними звання "Аптека Року 2016"|sdfgh|', 'Шановні фармацевтичні працівники!\r\nЩиро вітаємо Вас з професійним святом! \r\nВажливою і значущою є Ваша повсякденна, гуманна місія – забезпечувати людей ліками.\r\nВаш професіоналізм, вміння знаходити оптимальні рішення повертають людям здоров’я, додають впевненості у власних силах та віри в життя.\r\nПереконані, що ваша відданість справі, фаховий досвід, глибокі знання і динамізм завжди поєднуватимуться із щирим співчуттям до людей, милосердям та благодійністю у кращих гуманітарних традиціях.\r\nЗичимо вам усіляких гараздів, здійснення заповітних мрій, оптимізму, нових звершень і перемог!\r\nP.S. Окреме вітання адресоване Хмельницькій Міській Першій Аптеці зі здобуттям звання "Аптека Року 2016"!\r\nДякуємо, що обрали саме наш заклад для святкування цієї визначної дати! Цінуємо Ваш вибір і зробимо все, щоб цей день став частинкою приємних та щасливих спогадів у Вашому житті!|asdgrtfhj.,mnbgfvds\r\nasdghjm,.k,jhm|', 0.00, 0, '["upload\\/articles\\/16\\/images\\/DSC1654.JPG"]', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-05 08:05:22', '2016-10-05 18:44:58'),
(17, 5, 'Поблизу готеля|Near hotel|', 'Поблизу готеля розташовуються чудові краєвиди|Near hotel you can see beautiful views|', 0.00, 0, '["upload\\/articles\\/17\\/images\\/2T0A2176.jpg","upload\\/articles\\/17\\/images\\/2T0A2177.jpg","upload\\/articles\\/17\\/images\\/2T0A2302.jpg","upload\\/articles\\/17\\/images\\/2T0A2496.jpg","upload\\/articles\\/17\\/images\\/2T0A2497.jpg","upload\\/articles\\/17\\/images\\/2T0A2501.jpg"]', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-07 13:21:46', '2016-10-07 14:42:49'),
(18, 5, 'Фото готелю|Hotel''s photos|', 'Опис|Describe|', 0.00, 0, '["upload\\/articles\\/18\\/images\\/2T0A2200.jpg","upload\\/articles\\/18\\/images\\/2T0A2213.jpg","upload\\/articles\\/18\\/images\\/2T0A2228.jpg","upload\\/articles\\/18\\/images\\/2T0A2243.jpg","upload\\/articles\\/18\\/images\\/2T0A2245.jpg","upload\\/articles\\/18\\/images\\/2T0A2257.jpg","upload\\/articles\\/18\\/images\\/2T0A2302.jpg","upload\\/articles\\/18\\/images\\/2T0A2304.jpg","upload\\/articles\\/18\\/images\\/2T0A2372.jpg","upload\\/articles\\/18\\/images\\/2T0A2378.jpg","upload\\/articles\\/18\\/images\\/hamam.jpg","upload\\/articles\\/18\\/images\\/hamam1.jpg"]', '0000-00-00 00:00:00', '||', '||', '||', 1, '2016-10-07 14:45:03', '2016-10-07 14:47:42');

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
(1, 'Готелі', 'hotel', '["title","description","gallery"]', '2016-10-05 04:53:46', '2016-10-05 04:53:46'),
(2, 'Кімнати', 'rooms', '["title","description","gallery","price","quantity","active"]', '2016-10-05 04:53:46', '2016-10-05 04:53:46'),
(3, 'Послуги', 'services', '["title","description","meta_title","meta_description","gallery","active","price"]', '2016-10-05 04:53:46', '2016-10-05 04:53:46'),
(4, 'Події', 'events', '["title","description","meta_title","meta_description","gallery","date","active"]', '2016-10-05 04:53:46', '2016-10-05 04:53:46'),
(5, 'Галерея', 'gallery', '["title","description","meta_title","meta_description","gallery","date","active"]', '2016-10-05 04:53:46', '2016-10-05 04:53:46');

-- --------------------------------------------------------

--
-- Структура таблицы `langs`
--

CREATE TABLE IF NOT EXISTS `langs` (
  `id` int(10) unsigned NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `langs`
--

INSERT INTO `langs` (`id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'ua', '2016-10-05 04:53:46', '2016-10-05 04:53:46'),
(3, 'en', '2016-10-05 04:53:46', '2016-10-05 04:53:46');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'raun@i.ua', '$2y$10$KCR5WbIyUHXgZbsthDHHHOJgtdcmTA2Um.eXHbRwnvBWRgcJN/0O.', NULL, '2016-10-05 04:53:46', '2016-10-05 04:53:46'),
(2, 'root', 'webdesignstudio@gmail.com', '$2y$10$BdvnOe9NrHYCkipriMsBRuvfVrOGQI0oi7XzPHQSQ42pUpJGg4Q6y', NULL, '2016-10-05 04:53:46', '2016-10-05 04:53:46');

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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
