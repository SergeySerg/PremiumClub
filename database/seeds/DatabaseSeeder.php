<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;
use App\Models\Article;
use App\Models\Category;
use App\Models\Lang;

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
	}

}

class ArticlesSeeder extends Seeder {

	public function run()
	{
		DB::table('Articles')->delete();

		Article::create([
			'category_id' => 2,
			'title' => 'Двухкомнатный',
			'description' => 'Полное описание двухкомнотного номера',
			'price' => 200,
			'quantity' => 2,
			'img' => 'путь к картинке',
			'date' => DB::raw('CURRENT_TIMESTAMP'),
			'active' => true,
		]);

		Article::create([
			'category_id' => 3,
			'title' => 'Баня',
			'description' => 'Полное описание бани',
			'price' => 100,
			'img' => 'путь к картинке',
			'meta_title' => '',
			'meta_description' => '',
			'meta_keywords' => '',
			'date' => DB::raw('CURRENT_TIMESTAMP'),
			'active' => true,
		]);

		Article::create([
			'category_id' => 4,
			'title' => 'День Карпат',
			'description' => 'Полное описание события',
			'img' => 'путь к картинке',
			'meta_title' => '',
			'meta_description' => '',
			'meta_keywords' => '',
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
			'name' => 'Готелі',
			'link' => 'hotels',
		]);

		Category::create([
			'name' => 'Кімнати',
			'link' => 'rooms',
		]);

		Category::create([
			'name' => 'Послуги',
			'link' => 'services',
		]);

		Category::create([
			'name' => 'Події',
			'link' => 'events',
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