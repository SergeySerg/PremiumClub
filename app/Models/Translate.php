<?php namespace App\Models;
use App;
use Illuminate\Database\Eloquent\Model;

class Translate extends Model {

       public function getTranslate($field){
           $pieces = explode("|", $this->$field);
          if(count($pieces)<3)
              return $this->$field;
           if (App::getLocale() == 'ua')
               $field = $pieces[0];
           if (App::getLocale() == 'ru')
               $field = $pieces[1];
           if (App::getLocale() == 'en')
               $field = $pieces[2];
           return $field;
       }

}