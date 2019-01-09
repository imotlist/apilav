<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class MitraMigration extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mitra', function (Blueprint $table) {
            $table->increments('mitra_id');
            $table->string('mitra_nama');
            $table->string('mitra_email')->unique();
            $table->string('mitra_alamat');
            $table->string('mitra_telp');
            $table->string('mitra_pemilik');
            $table->integer('mitra_status');
            $table->integer('mitra_password');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mitra');
    }
}
