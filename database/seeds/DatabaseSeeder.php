<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        Model::unguard();
        $this->orderStatus();
	    Model::reguard();
    }

    function orderStatus() {
        DB::table('orderstatus')->insert([
            'name' => 'Issued'
        ]);

        DB::table('orderstatus')->insert([
            'name' => 'Waiting for payment'
        ]);

        DB::table('orderstatus')->insert([
            'name' => 'Waiting for payment confirmation'
        ]);

        DB::table('orderstatus')->insert([
            'name' => 'Payment confirmed'
        ]);

        DB::table('orderstatus')->insert([
            'name' => 'Shipped'
        ]);

        DB::table('orderstatus')->insert([
            'name' => 'Completed'
        ]);
    } 
}
