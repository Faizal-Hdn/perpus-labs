// Nama :Faizal Rizkan
// Kelas : 502
// NIM : 220101010157
// Makul : Pemprograman berbasis Web

@extends('petugas.theme.master')

@section('content')
<div class="d-flex justify-content-center align-items-center vh-100">
    <div class="col-md-5">
        <div class="card card-lg">
            <h4 class="card-header text-center text-dark">
                Detail Mahasiswa
            </h4>
            <div class="card-body">
                <div class="text-center mb-3">
                    <img src="/perpus/profil.jpg" alt="user"
                        class="rounded-circle"
                        style="width: 350px; height: 350px; object-fit: cover;">
                </div>
                <div class="text-center">
                    <h4 class="font-weight-800 text-dark mb-2">FAIZAL RIZKAN</h4>
                    <h5 class="font-weight-800 text-dark">NIM: 220101010157</h5>
                    <h5 class="font-weight-800 text-dark">Kelas: SI 502</h5>
                    <h5 class="font-weight-800 text-dark mb-2">Mata Kuliah: Pemograman Berbasis Web</h5>
                    <h2 class="font-weight-800 text-dark mb-2">UNIVERSITAS SIBER ASIA</h2>
                </div>
            </div>
            <div class="card-footer d-flex justify-content-center align-items-center">
                <a href="{{ route('home') }}" class="btn btn-primary">Continue Dashboard</a>
            </div>
        </div>
    </div>
</div>
@endsection
