<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class KomentarTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        foreach(range(0,10) as $i) {
            DB::table('t_komentar')->insert([
                'user_id' => $faker->randomDigit,
                'laporan_id' => $faker->randomDigit,
                'komentar' => $faker->sentences
            ]);
        }
    }
}