<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Translate {
    protected $fillable=['title','description','price','meta_description','meta_keywords','quantity','meta_title','public','active'];

    public function category(){
        return $this->belongsTo('App\Models\Category');
    }

}
