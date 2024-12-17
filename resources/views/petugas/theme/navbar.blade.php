<nav class="hk-nav hk-nav-light">
    <a href="javascript:void(0);" id="hk_nav_close" class="hk-nav-close"><span class="feather-icon"><i data-feather="x"></i></span></a>
    <div class="nicescroll-bar">
        <div class="navbar-nav-wrap">
            <div class="nav-header">
                <span>Home Dashboard</span>
                <span>HB</span>
            </div>
            <ul class="navbar-nav flex-column">
                <li class="nav-item {{ (request()->is('petugas/dashboard*')) ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('petugas.dashboard') }}">
                        <i class="material-icons">home</i>
                        <span class="nav-link-text">Dashboard</span>
                    </a>
                </li>
            </ul>
            <div class="nav-header">
                <span>Data Siswa</span>
                <span>DS</span>
            </div>
            <ul class="navbar-nav flex-column">
                <li class="nav-item {{ (request()->is('petugas/siswa*')) ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('siswa.index') }}">
                        <i class="material-icons">school</i>
                        <span class="nav-link-text">Data Siswa</span>
                    </a>
                </li>
                <li class="nav-item {{ (request()->is('petugas/kelas*')) ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('kelas.index') }}">
                        <i class="material-icons">home</i>
                        <span class="nav-link-text"> Data Kelas</span>
                    </a>
                </li>
            </ul>
            <!-- <hr class="nav-separator"> -->
            <div class="nav-header">
                <span>Data Buku</span>
                <span>DB</span>
            </div>
            <ul class="navbar-nav flex-column">
                <li class="nav-item {{ (request()->is('petugas/buku*')) ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('buku.index') }}">
                        <i class="material-icons">menu_book</i>
                        <span class="nav-link-text">Data Buku</span>
                    </a>
                </li>
                <li class="nav-item {{ (request()->is('petugas/rak*')) ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('rak.index') }}">
                        <i class="material-icons">shelves</i>
                        <span class="nav-link-text">Kategori</span>
                    </a>
                </li>
            </ul>
            <!-- <hr class="nav-separator"> -->
            <div class="nav-header">
                <span>Petugas</span>
                <span>PG</span>
            </div>
            <ul class="navbar-nav flex-column">
                <li class="nav-item {{ (request()->is('petugas/petugas*')) ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('petugas.index') }}">
                        <i class="material-icons">groups</i>
                        <span class="nav-link-text">Admin</span>
                    </a>
                </li>
                <li class="nav-item {{ (request()->is('petugas/laporan*')) ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('laporan.index') }}">
                        <i class="material-icons">school</i>
                        <span class="nav-link-text">Reporting</span>
                    </a>
                </li>
                <li class="nav-item {{ (request()->is('petugas/engembalian*')) ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('pengembalian.index') }}">
                        <i class="material-icons">school</i>
                        <span class="nav-link-text">Pengembalian Buku</span>
                    </a>
                </li>
                <li class="nav-item {{ (request()->is('petugas/peminjaman*')) ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('peminjaman.index') }}">
                        <i class="material-icons">school</i>
                        <span class="nav-link-text">Peminjaman Buku</span>
                    </a>
                </li>
                <!-- <li class="nav-item {{ (request()->is('petugas/kepsek*')) ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('kepsek.index') }}">
                        <i class="material-icons">school</i>
                        <span class="nav-link-text">Kepala Sekolah</span>
                    </a>
                </li> -->
            </ul>
            <!-- <hr class="nav-separator"> -->
            <div class="nav-header">
                <span>Pengaturan</span>
                <span>PN</span>
            </div>
            <ul class="navbar-nav flex-column">
                <li class="nav-item {{ (request()->is('petugas/denda*')) ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('denda.index') }}">
                        <i class="material-icons">monetization_on</i>
                        <span class="nav-link-text">Denda</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
