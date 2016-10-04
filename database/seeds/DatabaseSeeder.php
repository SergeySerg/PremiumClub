<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use App\Models\Article;
use App\Models\Category;
use App\Models\Lang;
use App\Models\User;

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		Model::unguard();

		// $this->call('UserTableSeeder');
		$this->call('ArticlesSeeder');
        $this->call('CategoriesSeeder');
        $this->call('LangsSeeder');
        $this->call('UsersSeeder');
	}

}

class ArticlesSeeder extends Seeder {

	public function run()
	{
		//DB::table('Articles')->delete();

		Article::create([
		    'category_id' => 2,
            'title' => 'Двухкімнатній|Двухкомнатный|two-room',
            'description' => 'Повный опис діухкімнатного номера|Полное описание двухкомнотного номера|Full descroption two bath room',
            'price' => 200,
            'quantity' => 2,
            'imgs' => '',
            'meta_title' => 'мета назва|мета название|meta_title',
            'meta_description' => 'мета опис|мета описание|meta_description',
            'meta_keywords' => 'мета ключевые слова|мета ключевые слова|meta_keywords',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
		]);

		Article::create([
		    'category_id' => 3,
            'title' => 'Лазня|Баня|Bath',
            'description' => 'Повный опис лазні|Полное описание бани|Full description bath',
            'price' => 100,
            'imgs' => '',
            'meta_title' => 'мета назва|мета название|meta_title',
            'meta_description' => 'мета опис|мета описание|meta_description',
            'meta_keywords' => 'мета ключевые слова|мета ключевые слова|meta_keywords',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
		]);

		Article::create([
		    'category_id' => 4,
            'title' => 'День Карпат|День Карпат|Day of Karpaty',
            'description' => 'Повный опис події День Карпат|Полное описание события|Full description day of Karpaty',
            'imgs' => '',
            'meta_title' => 'мета назва|мета название|meta_title',
            'meta_description' => 'мета опис|мета описание|meta_description',
            'meta_keywords' => 'мета ключевые слова|мета ключевые слова|meta_keywords',
            'date' => DB::raw('CURRENT_TIMESTAMP'),
            'active' => true,
		]);
	}

}

class CategoriesSeeder extends Seeder {

    public function run()
    {
        DB::table('Categories')->delete();

        Category::create([
            'id' => "1",
            'name' => 'Готелі',
            'link' => 'hotel',
            'fields' => '["title","description","gallery"]',
        ]);

        Category::create([
            'id' => "2",
            'name' => 'Кімнати',
            'link' => 'rooms',
            'fields' => '["title","description","gallery","price","quantity","active"]',
        ]);

        Category::create([
            'id' => "3",
            'name' => 'Послуги',
            'link' => 'services',
            'fields' => '["title","description","meta_title","meta_description","gallery","active","price"]',
        ]);

        Category::create([
            'id' => "4",
            'name' => 'Події',
            'link' => 'events',
            'fields' => '["title","description","meta_title","meta_description","gallery","date","active"]',
        ]);

        Category::create([
            'id' => "5",
            'name' => 'Галерея',
            'link' => 'gallery',
            'fields' => '["title","description","meta_title","meta_description","gallery","date","active"]',
        ]);
    }

}

class LangsSeeder extends Seeder {

    public function run()
    {
        DB::table('langs')->delete();

        Lang::create([
            'lang' => 'ua',
        ]);

        Lang::create([
            'lang' => 'ru',
        ]);

        Lang::create([
            'lang' => 'en',
        ]);

    }

}

class UsersSeeder extends Seeder {

    public function run()
    {
        DB::table('Users')->delete();

        User::create([
            'name' => 'admin',
            'email' => 'raun@i.ua',
            'password' => '$2y$10$KCR5WbIyUHXgZbsthDHHHOJgtdcmTA2Um.eXHbRwnvBWRgcJN/0O.',
        ]);

        User::create([
            'name' => 'root',
            'email' => 'webdesignstudio@gmail.com',
            'password' => '$2y$10$BdvnOe9NrHYCkipriMsBRuvfVrOGQI0oi7XzPHQSQ42pUpJGg4Q6y',
        ]);
    }

}

