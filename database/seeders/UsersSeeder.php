<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use \Illuminate\Support\Facades\DB;
use \Illuminate\Support\Facades\Hash;
use Carbon\Carbon;

class UsersSeeder extends Seeder {

    public function run() {
        
        $user_id = DB::table('users')->insertGetId([
            'name' => 'Mufti Sulaiman',
            'email' => 'ms@admin',
            'password' => Hash::make('1q2w3e4r5t'),
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        ]);
    }
}
