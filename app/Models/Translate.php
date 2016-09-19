<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App;

class Translate extends Model
{


    public function getTranslate($field)
    {
        $pieces = explode("|", $this->$field);
        if (count($pieces)<3){
            return $this->$field;
        }
        if (App::getLocale() == 'ru')
            $field = $pieces[0];
        if (App::getLocale() == 'ua')
            $field = $pieces[1];
        if (App::getLocale() == 'en')
            $field = $pieces[2];
        return $field;
    }

}