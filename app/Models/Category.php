<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Translate {

    public function articles(){
        return $this->hasMany('App\Models\Article');
    }

    public function hasField($field_name){
        $fields = json_decode($this->fields);

        //dd(json_encode(['title', 'description', 'meta_title', 'meta_description', 'gallery']));
        //dd($fields);
        foreach($fields as $field){
            if($field == $field_name){
                return true;
            }
        }
        return false;
    }

}

