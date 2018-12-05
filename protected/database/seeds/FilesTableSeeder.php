<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class FilesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        foreach(range(0,3) as $i) {
            DB::table('t_files')->insert([
                'laporan_id' => '1',
                'file' => $faker->imageUrl($width = 640, $height = 480)
            ]);
        }
    }
}
