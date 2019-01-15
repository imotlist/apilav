<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class ClientModel extends Model
{
    protected $table = 'client';

    protected $fillable = [
	    'c_username',
	    'c_fullame',
	    'c_email',
	    'c_alamat',
	    'c_telp',
	    'c_profile',
	    'c_password'
	  ];

	protected $primaryKey = 'c_id';
}
