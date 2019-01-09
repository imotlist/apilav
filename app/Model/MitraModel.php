<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class MitraModel extends Model
{
	protected $table = 'mitra';

    protected $fillable = [
	    'mitra_nama',
	    'mitra_email',
	    'mitra_alamat',
	    'mitra_telp',
	    'mitra_pemilik',
	    'mitra_status',
	    'mitra_password'
	  ];

	protected $primaryKey = 'mitra_id';
}
