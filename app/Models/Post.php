<?php namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Post extends Model {
    public function getPublishedPost(){
    $posts = Post::latest('published_at')
        ->published()
        ->get();
        return $posts;
}
 public function scopePublished($query){
     $query -> where('published_at','<=','Carbon::now()')
         ->where('published','=',1);

 }
    public function scopeUnPublished($query)
    {
        $query->where('published_at', '=>', Carbon::now())
            ->orWhere('published', '=', 0);
    }
    public function getUnPublishedPosts()
    {
        return $this->latest('published_at')->unPublished()->get();
    }

}
