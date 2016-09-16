<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Translate {

    public function articles(){
        return $this->hasMany('App\Models\Article');
    }
    
}

