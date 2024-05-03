CREATE TABLE IF NOT EXISTS Pegawai (
    NIP INTEGER PRIMARY KEY AUTO_INCREMENT,
    Nama VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    No_Telp VARCHAR(255) NOT NULL,
    Jabatan VARCHAR(255),
    Atasan INTEGER DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS Pelayanan (
    NIP INTEGER,
    ID_Peminjaman INTEGER,
    NIK INTEGER,
    PRIMARY KEY (NIP, ID_Peminjaman, NIK)
);

CREATE TABLE IF NOT EXISTS Pelanggan (
    NIK INTEGER PRIMARY KEY AUTO_INCREMENT,
    Nama VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    No_Telp VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Peminjaman (
    ID_Peminjaman INTEGER PRIMARY KEY AUTO_INCREMENT,
    Status_Peminjaman ENUM('Rented', 'Pending', 'Returned') NOT NULL,
    Tanggal_Peminjaman DATE NOT NULL DEFAULT (CURRENT_DATE),
    Tanggal_Pengembalian DATE NOT NULL DEFAULT (CURRENT_DATE + INTERVAL 1 DAY)
);

CREATE TABLE IF NOT EXISTS Detail_Peminjaman (
    ID_Peminjaman INTEGER,
    ID_Kendaraan INTEGER,
    Jumlah INTEGER NOT NULL,
    Total_Harga INTEGER NOT NULL,
    PRIMARY KEY (ID_Peminjaman, ID_Kendaraan)
);

CREATE TABLE IF NOT EXISTS Kendaraan (
    ID_Kendaraan INTEGER PRIMARY KEY AUTO_INCREMENT,
    Merek VARCHAR(255) NOT NULL,
    Plat VARCHAR(10) NOT NULL,
    Tipe_Mesin ENUM('Electric', 'Non-Electric') NOT NULL
);

CREATE TABLE IF NOT EXISTS Mobil (
    ID_Kendaraan INTEGER PRIMARY KEY,
    Jumlah_Kursi INTEGER NOT NULL,
    Kelas ENUM('Normal', 'SUV', 'Vans') NOT NULL
);

CREATE TABLE IF NOT EXISTS Motor (
    ID_Kendaraan INTEGER PRIMARY KEY,
    Kapasitas_Mesin INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Perusahaan (
    ID_Perusahaan INTEGER PRIMARY KEY AUTO_INCREMENT,
    Nama VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Kontak (
    ID_Perusahaan INTEGER,
    Kontak VARCHAR(255) NOT NULL,
    PRIMARY KEY (ID_Perusahaan, Kontak)
);

CREATE TABLE IF NOT EXISTS Perusahaan_Perawatan (
    ID_Perusahaan INTEGER PRIMARY KEY,
    Spesialisasi VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Perusahaan_Asuransi (
    ID_Perusahaan INTEGER PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Layanan (
    ID_Layanan INTEGER PRIMARY KEY AUTO_INCREMENT,
    Biaya INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Layanan_Perawatan_Rutin (
    ID_Layanan INTEGER PRIMARY KEY,
    Perusahaan_Perawatan INTEGER NOT NULL,
    Tipe_Perawatan VARCHAR(255) NOT NULL,
    Tanggal_Perawatan DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Layanan_Asuransi (
    ID_Layanan INTEGER PRIMARY KEY,
    Perusahaan_Asuransi INTEGER NOT NULL,
    Tanggal_Berakhir DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Perawatan_Rutin (
    ID_Layanan INTEGER,
    ID_Kendaraan INTEGER,
    PRIMARY KEY (ID_Layanan, ID_Kendaraan)
);

CREATE TABLE IF NOT EXISTS Asuransi (
    ID_Layanan INTEGER,
    ID_Kendaraan INTEGER,
    PRIMARY KEY (ID_Layanan, ID_Kendaraan)
);