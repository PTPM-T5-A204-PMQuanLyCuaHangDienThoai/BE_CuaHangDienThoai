<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\SanPham>
 */
class SanPhamFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
        'id' => $this->faker->unique()->numerify('##########'),
        'name'  => $this->faker->name,
        'SoLuongTon' => $this->faker->randomNumber(),
        'GiaGoc' => $this->faker->randomNumber(),
        'GiaKhuyenMai' => $this->faker->randomNumber(),
        'MoTa' => $this->faker->name,
        'ManHinh' => $this->faker->randomFloat(),
        'DoPhanGiai' => $this->faker->name,
        'TanSoQuet' => $this->faker->randomNumber(),
        'CameraSau' => $this->faker->name,
        'CameraTruoc' => $this->faker->name,
        'CPU' => $this->faker->name,
        'GPU' => $this->faker->name,
        'RAM' => $this->faker->randomElement(['6','8']),
        'ROM' => $this->faker->randomElement(['128','256']),
        'Flash' => $this->faker->boolean(),
        'Pin' => $this->faker->randomNumber(),
        'Sim' => $this->faker->randomElement(['4','5']),
        'HeDieuHanh' => $this->faker->randomElement(['Android','IOS']),
        'HoTroMang' => $this->faker->randomElement(['4','5']),
        'KhangNuoc' => $this->faker->boolean(),
        'ThoiDiemRaMat' => $this->faker->dateTime(),
        'TrangThai' => $this->faker->boolean(),
        'ThoiGianBaoHanh' => 12,
        'ThoiGianDoiTra' => 0,
        // 'idDanhMuc' => $this->faker->name,
        // 'idNhaCungCap' => $this->faker->name,
        'Anh' => $this->faker->name
        ];
    }
}
