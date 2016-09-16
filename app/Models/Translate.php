<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Translate extends Model
{


    public function getTranslate($field)
    {
        //$value = explode($this->$field, '|');
        $pieces = explode("|", $field);
        if (App::getLocale() == 'ru')
            $field = $pieces[0];
        if (App::getLocale() == 'ua')
            $field = $pieces[1];
        if (App::getLocale() == 'en')
            $field = $pieces[2];
        return $this->$field . "<< translate";
    }

}