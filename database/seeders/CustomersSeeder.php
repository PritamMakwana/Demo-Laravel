<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Customer;
use Faker\Factory as Faker;

class CustomersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $fake = Faker::create();
        for($i = 0 ; $i <= 100; $i++){
        $cus = new Customer;
        $cus->name = $fake->name;
        $cus->email = $fake->email;
        $cus->address = $fake->address;
        $cus->gender = "M";
        $cus->city = $fake->city;
        $cus->country = $fake->country;
        $cus->dob = $fake->date;
        $cus->password = $fake->name;
        $cus->save();
        }
    }
}
