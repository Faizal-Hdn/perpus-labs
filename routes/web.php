<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\Petugas\BukuPetugasController;
use App\Http\Controllers\Petugas\DashboardPetugasController;
use App\Http\Controllers\Petugas\DendaPetugasController;
use App\Http\Controllers\Petugas\KelasPetugasController;
use App\Http\Controllers\Petugas\KepsekPetugasController;
use App\Http\Controllers\Petugas\LaporanPetugasController;
use App\Http\Controllers\Petugas\PeminjamanPetugasController;
use App\Http\Controllers\Petugas\PengambalianPetugasController;
use App\Http\Controllers\Petugas\PetugasController;
use App\Http\Controllers\Petugas\ProfilPetugasController;
use App\Http\Controllers\Petugas\RakPetugasController;
use App\Http\Controllers\Petugas\ScanBarcodePetugasController;
use App\Http\Controllers\Petugas\SiswaPetugasController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


// Nama :Faizal Rizkan
// Kelas : 502
// NIM : 220101010157
// Makul : Pemprograman berbasis Web


Route::get('/', [LoginController::class, 'login'])->name('login');
// Route::get('/visi', [DashboardController::class, 'visi'])->name('home.visi');
// Route::get('/profile', [DashboardController::class, 'profile'])->name('home.profile');
// Route::get('/tata-tertib', [DashboardController::class, 'tata_tertib'])->name('home.tata');
// Route::get('/buku', [DashboardController::class, 'buku'])->name('home.buku');
// Route::get('/buku/cari', [DashboardController::class, 'cari'])->name('home.cari');
 
Auth::routes();

// URL::forceScheme('https');

Route::middleware(['auth'])->get('/student/details', function () {
    return view('student.details');
})->name('student.details');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::middleware(['auth', 'user-access:Petugas'])->group(function () {

    Route::get('/petugas/dashboard', [DashboardPetugasController::class, 'index'])->name('petugas.dashboard');

    Route::resource('/petugas/siswa', SiswaPetugasController::class);

    Route::resource('/petugas/kelas', KelasPetugasController::class);

    Route::resource('/petugas/rak', RakPetugasController::class);

    Route::resource('/petugas/buku', BukuPetugasController::class);

    Route::resource('/petugas/petugas', PetugasController::class);

    Route::get('/petugas/peminjaman', [PeminjamanPetugasController::class, 'index'])->name('peminjaman.index');
    Route::get('/petugas/peminjaman/scan', [PeminjamanPetugasController::class, 'cek'])->name('peminjaman.scan');
    Route::post('/petugas/peminjaman/pinjam', [PeminjamanPetugasController::class, 'pinjam'])->name('peminjaman.store');

    Route::get('/petugas/pengembalian', [PengambalianPetugasController::class, 'index'])->name('pengembalian.index');
    Route::get('/petugas/pengembalian/scan', [PengambalianPetugasController::class, 'scan'])->name('pengembalian.scan');
    Route::post('/petugas/pengembalian/proses', [PengambalianPetugasController::class, 'proses'])->name('pengembalian.proses');

    Route::get('/petugas/profile', [ProfilPetugasController::class, 'index'])->name('profile.index');
    Route::put('/petugas/profile/edit-profile/{profile}', [ProfilPetugasController::class, 'data'])->name('profile.profile');
    Route::put('/petugas/profile/edit-password/{profile}', [ProfilPetugasController::class, 'password'])->name('profile.password');

    Route::get('/petugas/profile/foto', [ProfilPetugasController::class, 'foto'])->name('profile.foto');
    Route::put('/petugas/profile/foto-update/{profile}', [ProfilPetugasController::class, 'foto_update'])->name('profile.foto_update');

    Route::get('/petugas/laporan', [LaporanPetugasController::class, 'index'])->name('laporan.index');
    Route::get('/petugas/laporan/cetak', [LaporanPetugasController::class, 'cetak_pdf'])->name('laporan.cetak_pdf');
    Route::post('/petugas/laporan/cari', [LaporanPetugasController::class, 'cari_laporan'])->name('laporan.cari_laporan');

    Route::resource('/petugas/denda', DendaPetugasController::class);

    Route::resource('/petugas/kepsek', KepsekPetugasController::class);
   
});
 