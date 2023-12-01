<?php

namespace Database\Seeders;

use App\Models\AI;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AISeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        AI::factory(1000)->create();
    }
}
