<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Text extends Translate {

    protected $table="texts"; //нзвание таблицы в базе
    protected $fillable=['page_id','title','type','priority','description'];

}
