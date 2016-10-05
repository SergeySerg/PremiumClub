<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Translate {
    protected $fillable=['category_id','title','description','price','imgs','meta_description','meta_keywords','quantity','meta_title','public','active'];

    public function category(){
        return $this->belongsTo('App\Models\Category');
    }
    public function getImages(){
        if (isset($this->imgs)){
            $imgs = json_decode($this->imgs);
            return $imgs ?: [];
        }
        else{
            return [];
        }
    }
}
