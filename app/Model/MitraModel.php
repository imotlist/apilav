<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class MitraModel extends Model
{
	protected $table = 'mitra';

    protected $fillable = [
	    'm_nama',
	    'm_email',
	    'm_alamat',
	    'm_telp',
	    'm_pemilik',
	    'm_status',
	    'm_password'
	  ];

	protected $primaryKey = 'm_id';
}
