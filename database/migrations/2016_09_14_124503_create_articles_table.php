<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArticlesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('articles', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('category_id');
			$table->text('title');
			$table->text('description');
			$table->double('price', 8, 2)->default(0);
			$table->integer('quantity');
			$table->text('imgs');
			$table->timestamp('date');
			$table->text('meta_title');
			$table->text('meta_description');
			$table->text('meta_keywords');
			$table->boolean('active')->default(false);
            $table->timestamp('created_at');
            $table->timestamp('updated_at');
        });
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('articles');
	}

}
