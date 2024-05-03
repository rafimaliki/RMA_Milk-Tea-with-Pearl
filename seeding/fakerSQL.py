import faker as f

fake = f.Faker('id_ID')
id_perusahaan_perawatan = []
id_perusahaan_asuransi = []
id_layanan_perawatan = []
id_layanan_asuransi = []
spesialisasi_perusahaan = []
spesialisasi_choice = ["Cat", "Mesin", "Ban", "Kaki-Kaki", "Kelistrikan", "Oli", "Filter", "Kopling", "Rem", "Lampu", "Cleaning", "Tune-Up", "Overhaul", "Pelek", "Knalpot", "Karburator"]
tipe_mesin_choice = ["Electric", "Non-Electric"]
kelas_choice = ['Normal', 'SUV', 'Vans']
status_peminjaman_choice = ['Rented', 'Pending', 'Returned']


countPerusahaan = 150
countKontak = 150
countPerusahaanPerawatan = countPerusahaan/2
countPerusahaanAsuransi = countPerusahaan/2
countLayanan = countPerusahaan
countLayananPerawatan = countLayanan/2
countLayananAsuransi = countLayanan/2
countPerawatanRutin = 50
countAsuransi = 50
countKendaraan = 250
countMobil = countKendaraan/2
countMotor = countKendaraan/2
countPeminjaman = 100
countDetailPeminjaman = countPeminjaman*2
countPelanggan = 50
countPegawai = 100
countPelayanan = 100




def fake_Pegawai() -> str:
    pass

def fake_Pelayanan() -> str:
    pass

def fake_Pelanggan() -> str:
    pass

def fake_Peminjaman() -> str:
    pass

def fake_Detail_Peminjaman() -> str:
    pass

def fake_Kendaraan() -> str:
    pass

def fake_Mobil() -> str:
    pass

def fake_Motor() -> str:
    pass

def fake_Perusahaan() -> str:
    res = []
    for _ in range(100):
        e = {}
        e['Nama'] = fake.company()
        res.append(e)
    
    return INSERT('Perusahaan', ['Nama'], res)

def fake_Kontak() -> str:
    res = []
    for _ in range(100):
        e = {}
        e["ID_Perusahaan"] = fake.random_int(1, 50)
        e['Kontak'] = fake.phone_number()
        res.append(e)

    return INSERT('Kontak', ['ID_Perusahaan','Kontak'], res)

def fake_Perusahaan_Perawatan() -> str:
    global id_perusahaan_perawatan, spesialisasi_choice, spesialisasi_perusahaan
    res = []
    for _ in range(50):
        e = {}

        # get random number that is not in id_perusahaan_perawatan
        randNumber = fake.random_int(1, 100)
        while (randNumber in id_perusahaan_perawatan):
            randNumber = fake.random_int(1, 100)
        id_perusahaan_perawatan.append(randNumber)

        e['ID_Perusahaan'] = randNumber
        e['Spesialisasi'] = fake.random_choices(spesialisasi_choice, length=1)[0]
        res.append(e)

    spesialisasi_perusahaan = [e['Spesialisasi'] for e in res]

    return INSERT('Perusahaan_Perawatan', ['ID_Perusahaan', 'Spesialisasi'], res)

def fake_Perusahaan_Asuransi() -> str:
    global id_perusahaan_asuransi, id_perusahaan_perawatan
    res = []
    for _ in range(50):
        e = {}

        # get random number that is not in id_perusahaan_asuransi or id_perusahaan_perawatan
        randNumber = fake.random_int(1, 100)
        while (randNumber in id_perusahaan_asuransi or randNumber in id_perusahaan_perawatan):
            randNumber = fake.random_int(1, 100)
        id_perusahaan_asuransi.append(randNumber)

        e['ID_Perusahaan'] = randNumber
        res.append(e)

    return INSERT('Perusahaan_Asuransi', ['ID_Perusahaan'], res)

def fake_Layanan() -> str:
    res = []
    for _ in range(100):
        e = {}
        e['Biaya'] = fake.random_int(min=100000, max=1000000).__round__(-3)
        res.append(e)

    return INSERT('Layanan', ['Biaya'], res)

def fake_Layanan_Perawatan_Rutin() -> str:
    global id_perusahaan_perawatan, id_layanan_perawatan, spesialisasi_perusahaan
    res = []
    for i in range(50):
        e = {}

        # get random number that is not in id_layanan_perawatan
        randNumber = fake.random_int(1, 100)
        while (randNumber in id_layanan_perawatan):
            randNumber = fake.random_int(1, 100)
        id_layanan_perawatan.append(randNumber)

        e['ID_Layanan'] = randNumber
        e['Perusahaan_Perawatan'] = id_perusahaan_perawatan[i]
        e['Tipe_Perawatan'] = spesialisasi_perusahaan[i]
        e['Tanggal_Perawatan'] = fake.past_date()

        res.append(e)

    return INSERT('Layanan_Perawatan_Rutin', ['ID_Layanan', 'Perusahaan_Perawatan', 'Tipe_Perawatan', 'Tanggal_Perawatan'], res)

def fake_Layanan_Asuransi() -> str:
    global id_layanan_asuransi, id_layanan_perawatan, id_perusahaan_asuransi

    res = []
    for i in range(50):
        e = {}

        # get random number that is not in id_layanan_asuransi or id_layanan_perawatan
        randNumber = fake.random_int(1, 100)
        while (randNumber in id_layanan_asuransi or randNumber in id_layanan_perawatan):
            randNumber = fake.random_int(1, 100)
        id_layanan_asuransi.append(randNumber)

        e['ID_Layanan'] = randNumber
        e['Perusahaan_Asuransi'] = id_perusahaan_asuransi[i]
        e['Tanggal_Berakhir'] = fake.date_this_year()

        res.append(e)

    return INSERT('Layanan_Asuransi', ['ID_Layanan', 'Perusahaan_Asuransi', 'Tanggal_Berakhir'], res)

def fake_Perawatan_Rutin() -> str:
    pass

def fake_Asuransi() -> str:
    pass


def INSERT(table, column, data) -> str:
    res = f'INSERT INTO {table} ({", ".join(column)}) VALUES\n'
    for d in data:
        res += '('
        for c in column:
            if type(d[c]) == int:
                res += str(d[c]) + ', '
            else:
                res += f"'{d[c]}'" + ', '
        res = res[:-2] + '),\n'
    
    return res[:-2] + ';'


def test():
    print("\n\nTest fake_Perusahaan\n")
    print(fake_Perusahaan())
    print("\n\nTest fake_Kontak\n")
    print(fake_Kontak())
    print("\n\nTest fake_Perusahaan_Perawatan\n")
    print(fake_Perusahaan_Perawatan())
    print("\n\nTest fake_Perusahaan_Asuransi\n")
    print(fake_Perusahaan_Asuransi())
    print("\n\nTest fake_Layanan\n")
    print(fake_Layanan())
    print("\n\nTest fake_Layanan_Perawatan_Rutin\n")
    print(fake_Layanan_Perawatan_Rutin())
    print("\n\nTest fake_Layanan_Asuransi\n")
    print(fake_Layanan_Asuransi())

if __name__ == '__main__':
    test()