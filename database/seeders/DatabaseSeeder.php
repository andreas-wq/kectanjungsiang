<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        //$this->call(RoleSeeder::Class);
        //$this->call(UserSeeder::Class);
        $this->call(BidangSeeder::Class);        
        $this->call(PermissionSeeder::Class);

    }
}
