<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasFactory;
    protected $table = 'sliders';
    protected $fillable = [
        'id',
        'title',
        'url',
        'thumb',
        'thumb',
        'sort_by',
        'active',
    ];
}
