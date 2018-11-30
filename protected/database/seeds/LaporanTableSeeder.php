<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class LaporanTableSeeder extends Seeder
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
            DB::table('t_laporans')->insert([
                'kategori_id' => '1',
                'user_id' => $faker->randomDigit,
                'topik' => $faker->sentence,
                'uraian' => $faker->text,
                'status_id' => '1',
                'hidden' => $faker->boolean
            ]);
        }
    }
}
