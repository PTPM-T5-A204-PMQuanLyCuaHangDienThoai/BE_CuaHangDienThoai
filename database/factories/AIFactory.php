<?php

namespace Database\Factories;

use App\Models\SanPham;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\AI>
 */
class AIFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $sanPham = SanPham::inRandomOrder()->first();
        return [
            
            'HieuSuat' => $this->faker->randomElement(['Games','Chụp ảnh','Lướt web']),
            'Camera' => $this->faker->randomElement(['Sắc nét', 'Không quan trọng']),
            'Pin' => $this->faker->randomElement([4000,5000]),
            'TanSo' => $this->faker->randomElement([60,90,120,144]),
            'idSanPham' => $sanPham->id
        ];
    }
}
