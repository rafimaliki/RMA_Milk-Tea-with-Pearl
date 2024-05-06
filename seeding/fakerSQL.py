import faker as f

fake = f.Faker('id_ID')
id_perusahaan_perawatan = []
id_perusahaan_asuransi = []
id_layanan_perawatan = []
id_layanan_asuransi = []
id_mobil = []
id_motor = []
spesialisasi_perusahaan = []
spesialisasi_choice = ["Cat", "Mesin", "Ban", "Kaki-Kaki", "Kelistrikan", "Oli", "Filter", "Kopling", "Rem", "Lampu", "Cleaning", "Tune-Up", "Overhaul", "Pelek", "Knalpot", "Karburator"]
tipe_mesin_choice = ["Electric", "Non-Electric"]
kelas_choice = ['Normal', 'SUV', 'Vans']
status_peminjaman_choice = ['Rented', 'Pending', 'Returned']
merek_kendaraan_choice = ['Toyota', 'Honda', 'Suzuki', 'Yamaha', 'Kawasaki', 'Daihatsu', 'Mitsubishi', 'Isuzu', 'Mercedes-Benz', 'BMW', 'Audi', 'Lexus', 'Nissan', 'Ford', 'Chevrolet', 'Hyundai', 'KIA', 'Mazda', 'Subaru', 'Peugeot', 'Renault', 'Volvo', 'Jaguar', 'Land Rover', 'Jeep', 'Porsche', 'Ferrari', 'Lamborghini', 'Bugatti', 'Maserati', 'Bentley', 'Rolls-Royce', 'McLaren', 'Aston Martin', 'Lotus', 'Alfa Romeo', 'Fiat', 'Mini', 'Smart', 'Citroen', 'Dacia', 'Skoda', 'Seat', 'Opel', 'Volkswagen', 'Peugeot', 'Renault', 'Volvo', 'Jaguar', 'Land Rover', 'Jeep', 'Porsche', 'Ferrari', 'Lamborghini', 'Bugatti', 'Maserati', 'Bentley', 'Rolls-Royce', 'McLaren', 'Aston Martin', 'Lotus', 'Alfa Romeo', 'Fiat', 'Mini', 'Smart', 'Citroen', 'Dacia', 'Skoda', 'Seat', 'Opel', 'Volkswagen', 'Peugeot', 'Renault', 'Volvo', 'Jaguar', 'Land Rover', 'Jeep', 'Porsche', 'Ferrari', 'Lamborghini', 'Bugatti', 'Maserati', 'Bentley', 'Rolls-Royce', 'McLaren', 'Aston Martin', 'Lotus', 'Alfa Romeo', 'Fiat', 'Mini', 'Smart', 'Citroen', 'Dacia', 'Skoda', 'Seat', 'Opel', 'Volkswagen', 'Peugeot', 'Renault', 'Volvo', 'Jaguar', 'Land Rover', 'Jeep', 'Porsche', 'Ferrari', 'Lamborghini', 'Bugatti', 'Maserati', 'Bentley', 'Rolls-Royce', 'McLaren', 'Aston Martin', 'Lotus', 'Alfa Romeo',]
jabatan_choice = ['customer service', 'staff', 'manager', 'supervisor', 'director', 'driver', 'technician', 'sales', 'marketing']


countPerusahaan = 150
countKontak = 150
countPerusahaanPerawatan = countPerusahaan//2
countPerusahaanAsuransi = countPerusahaan//2
countLayanan = countPerusahaan
countLayananPerawatan = countLayanan//2
countLayananAsuransi = countLayanan//2
countPerawatanRutin = 50
countAsuransi = 50
countKendaraan = 250
countMobil = countKendaraan//2
countMotor = countKendaraan//2
countPeminjaman = 100
countDetailPeminjaman = countPeminjaman*2
countPelanggan = 50
countPegawai = 100
countPelayanan = 100


def fake_Perusahaan() -> str:
    res = []
    for _ in range(countPerusahaan):
        e = {}
        e['Nama'] = fake.company()
        res.append(e)
    
    return INSERT('Perusahaan', ['Nama'], res)

def fake_Kontak() -> str:
    res = []
    for _ in range(countKontak):
        e = {}
        e["ID_Perusahaan"] = fake.random_int(1, 50)
        e['Kontak'] = fake.phone_number()
        res.append(e)

    return INSERT('Kontak', ['ID_Perusahaan','Kontak'], res)

def fake_Perusahaan_Perawatan() -> str:
    global id_perusahaan_perawatan, spesialisasi_choice, spesialisasi_perusahaan
    res = []
    for _ in range(countPerusahaanPerawatan):
        e = {}

        # get random number that is not in id_perusahaan_perawatan
        randNumber = fake.random_int(1, countPerusahaan)
        while (randNumber in id_perusahaan_perawatan):
            randNumber = fake.random_int(1, countPerusahaan)
        id_perusahaan_perawatan.append(randNumber)

        e['ID_Perusahaan'] = randNumber
        e['Spesialisasi'] = fake.random_choices(spesialisasi_choice, length=1)[0]
        res.append(e)

    spesialisasi_perusahaan = [e['Spesialisasi'] for e in res]

    return INSERT('Perusahaan_Perawatan', ['ID_Perusahaan', 'Spesialisasi'], res)

def fake_Perusahaan_Asuransi() -> str:
    global id_perusahaan_asuransi, id_perusahaan_perawatan
    res = []
    for _ in range(countPerusahaanAsuransi):
        e = {}

        # get random number that is not in id_perusahaan_asuransi or id_perusahaan_perawatan
        randNumber = fake.random_int(1, countPerusahaan)
        while (randNumber in id_perusahaan_asuransi or randNumber in id_perusahaan_perawatan):
            randNumber = fake.random_int(1, countPerusahaan)
        id_perusahaan_asuransi.append(randNumber)

        e['ID_Perusahaan'] = randNumber
        res.append(e)

    return INSERT('Perusahaan_Asuransi', ['ID_Perusahaan'], res)

def fake_Layanan() -> str:
    res = []
    for _ in range(countLayanan):
        e = {}
        e['Biaya'] = fake.random_int(min=100000, max=1000000).__round__(-3)
        res.append(e)

    return INSERT('Layanan', ['Biaya'], res)

def fake_Layanan_Perawatan_Rutin() -> str:
    global id_perusahaan_perawatan, id_layanan_perawatan, spesialisasi_perusahaan
    res = []
    for i in range(countLayananPerawatan):
        e = {}

        # get random number that is not in id_layanan_perawatan
        randNumber = fake.random_int(1, countLayanan)
        while (randNumber in id_layanan_perawatan):
            randNumber = fake.random_int(1, countLayanan)
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
    for i in range(countLayananAsuransi):
        e = {}

        # get random number that is not in id_layanan_asuransi or id_layanan_perawatan
        randNumber = fake.random_int(1, countLayanan)
        while (randNumber in id_layanan_asuransi or randNumber in id_layanan_perawatan):
            randNumber = fake.random_int(1, countLayanan)
        id_layanan_asuransi.append(randNumber)

        e['ID_Layanan'] = randNumber
        e['Perusahaan_Asuransi'] = id_perusahaan_asuransi[i]
        e['Tanggal_Berakhir'] = fake.date_this_year()

        res.append(e)

    return INSERT('Layanan_Asuransi', ['ID_Layanan', 'Perusahaan_Asuransi', 'Tanggal_Berakhir'], res)

def fake_Kendaraan() -> str:
    res = []
    for _ in range(countKendaraan):
        e = {}
        e['Plat'] = fake.license_plate()
        e['Merek'] = fake.random_choices(merek_kendaraan_choice, length=1)[0]
        e['Tipe_Mesin'] = fake.random_choices(tipe_mesin_choice, length=1)[0]
        res.append(e)

    return INSERT('Kendaraan', ['Plat', 'Merek', 'Tipe_Mesin'], res)

def fake_Mobil() -> str:
    global id_mobil
    res = []
    for _ in range(countMobil):
        e = {}

        # get random number that is not in id_mobil
        randNumber = fake.random_int(1, countKendaraan)
        while (randNumber in id_mobil):
            randNumber = fake.random_int(1, countKendaraan)
        id_mobil.append(randNumber)

        e['ID_Kendaraan'] = randNumber
        e['Jumlah_Kursi'] = fake.random_int(min=2, max=8)
        e['Kelas'] = fake.random_choices(kelas_choice, length=1)[0]
        res.append(e)

    return INSERT('Mobil', ['ID_Kendaraan', 'Jumlah_Kursi', 'Kelas'], res)

def fake_Motor() -> str:
    global id_motor
    res = []
    for _ in range(countMotor):
        e = {}

        # get random number that is not in id_motor and not in id_mobil to avoid duplicate ID_Kendaraan
        randNumber = fake.random_int(1, countKendaraan)
        while (randNumber in id_motor or randNumber in id_mobil):
            randNumber = fake.random_int(1, countKendaraan)
        id_motor.append(randNumber)

        e['ID_Kendaraan'] = randNumber
        e['Kapasitas_Mesin'] = fake.random_int(min=100, max=1000).__round__(-2)
        res.append(e)

    return INSERT('Motor', ['ID_Kendaraan', 'Kapasitas_Mesin'], res)

def fake_Perawatan_Rutin() -> str:
    res = []
    for _ in range(countPerawatanRutin):
        e = {}
        e['ID_Layanan'] = fake.random_choices(id_layanan_perawatan, length=1)[0]
        e['ID_Kendaraan'] = fake.random_choices(id_mobil + id_motor, length=1)[0]
        res.append(e)

    return INSERT('Perawatan_Rutin', ['ID_Layanan', 'ID_Kendaraan'], res)

def fake_Asuransi() -> str:
    res = []
    for _ in range(countAsuransi):
        e = {}
        e['ID_Layanan'] = fake.random_choices(id_layanan_asuransi, length=1)[0]
        e['ID_Kendaraan'] = fake.random_choices(id_mobil + id_motor, length=1)[0]
        res.append(e)

    return INSERT('Asuransi', ['ID_Layanan', 'ID_Kendaraan'], res)

def fake_Pegawai() -> str:
    res = []
    for i in range(countPegawai):
        e = {}
        e['NIP'] = i + 1
        e['Nama'] = fake.name()
        e['Email'] = fake.email()
        e['No_Telp'] = fake.phone_number()
        e['Jabatan'] = fake.random_choices(jabatan_choice, length=1)[0]
        res.append(e)

    manager = [e['NIP'] for e in res if e['Jabatan'] == 'manager']
    supervisor = [e['NIP'] for e in res if e['Jabatan'] == 'supervisor']
    director = [e['NIP'] for e in res if e['Jabatan'] == 'director']
    driver = [e['NIP'] for e in res if e['Jabatan'] == 'driver']
    technician = [e['NIP'] for e in res if e['Jabatan'] == 'technician']
    sales = [e['NIP'] for e in res if e['Jabatan'] == 'sales']
    marketing = [e['NIP'] for e in res if e['Jabatan'] == 'marketing']
    customer_service = [e['NIP'] for e in res if e['Jabatan'] == 'customer service']
    staff = [e['NIP'] for e in res if e['Jabatan'] == 'staff']
    for i in range(countPegawai):    
        if i+1 in manager:
            res[i]['Atasan'] = fake.random_choices(director, length=1)[0]
        elif i+1 in supervisor:
            res[i]['Atasan'] = fake.random_choices(manager, length=1)[0]
        elif i+1 in director:
            res[i]['Atasan'] = None
        elif i+1 in driver:
            res[i]['Atasan'] = fake.random_choices(supervisor, length=1)[0]
        elif i+1 in technician:
            res[i]['Atasan'] = fake.random_choices(supervisor, length=1)[0]
        elif i+1 in sales:
            res[i]['Atasan'] = fake.random_choices(manager, length=1)[0]
        elif i+1 in marketing:
            res[i]['Atasan'] = fake.random_choices(manager, length=1)[0]
        elif i+1 in customer_service:
            res[i]['Atasan'] = fake.random_choices(supervisor, length=1)[0]
        elif i+1 in staff:
            res[i]['Atasan'] = fake.random_choices(supervisor, length=1)[0]

    return INSERT('Pegawai', ['NIP', 'Nama', 'Email', 'No_Telp', 'Jabatan', 'Atasan'], res)

def fake_Pelanggan() -> str:
    res = []
    for i in range(countPelanggan):
        e = {}
        e['NIK'] = i + 1
        e['Nama'] = fake.name()
        e['Email'] = fake.email()
        e['No_Telp'] = fake.phone_number()
        res.append(e)

    return INSERT('Pelanggan', ['NIK', 'Nama', 'Email', 'No_Telp'], res)

def fake_Peminjaman() -> str:
    res = []
    for i in range(countPeminjaman):
        e = {}
        e['ID_Peminjaman'] = i + 1
        e['Status_Peminjaman'] = fake.random_choices(status_peminjaman_choice, length=1)[0]
        if (e['Status_Peminjaman'] == 'Rented'):
            e['Tanggal_Peminjaman'] = fake.past_date()
            e['Tanggal_Pengembalian'] = fake.future_date()
        elif (e['Status_Peminjaman'] == 'Pending'):
            e['Tanggal_Peminjaman'] = fake.future_date()
            returnDate = fake.future_date()
            while (returnDate < e['Tanggal_Peminjaman']):
                returnDate = fake.future_date()
            e['Tanggal_Pengembalian'] = returnDate
        else: # Returned
            e['Tanggal_Peminjaman'] = fake.past_date()
            returnDate = fake.past_date()
            while (returnDate < e['Tanggal_Peminjaman']):
                returnDate = fake.past_date()
            e['Tanggal_Pengembalian'] = returnDate
        res.append(e)

    return INSERT('Peminjaman', ['ID_Peminjaman', 'Status_Peminjaman', 'Tanggal_Peminjaman', 'Tanggal_Pengembalian'], res)

def fake_Detail_Peminjaman() -> str:
    res = []
    for i in range(countDetailPeminjaman):
        e = {}
        e['ID_Peminjaman'] = fake.random_int(1, countPeminjaman)
        e['ID_Kendaraan'] = fake.random_int(1, countKendaraan)
        e['Total_Harga'] = fake.random_int(min=100000, max=1000000).__round__(-3)
        e['Jumlah'] = fake.random_int(min=1, max=10)
        res.append(e)

    return INSERT('Detail_Peminjaman', res[0].keys(), res)

def fake_Pelayanan() -> str:
    res = []
    for i in range(countPelayanan):
        e = {}
        e['ID_Peminjaman'] = fake.random_int(1, countPeminjaman)
        e['ID_Kendaraan'] = fake.random_int(1, countKendaraan)
        e['NIK'] = fake.random_int(1, countPelanggan)
        res.append(e)

    return INSERT('Pelayanan', res[0].keys(), res)

def INSERT(table, column, data) -> str:
    res = f'INSERT INTO {table} ({", ".join(column)}) VALUES\n'
    for d in data:
        res += '('
        for c in column:
            if d[c] == None:
                res += 'NULL, '
            elif type(d[c]) == int:
                res += str(d[c]) + ', '
            else:
                res += f"'{d[c]}'" + ', '
        res = res[:-2] + '),\n'
    
    return res[:-2] + ';'


def test():
    # print("\n\nTest fake_Perusahaan\n")
    # print(fake_Perusahaan())
    # print("\n\nTest fake_Kontak\n")
    # print(fake_Kontak())
    # print("\n\nTest fake_Perusahaan_Perawatan\n")
    # print(fake_Perusahaan_Perawatan())
    # print("\n\nTest fake_Perusahaan_Asuransi\n")
    # print(fake_Perusahaan_Asuransi())
    # print("\n\nTest fake_Layanan\n")
    # print(fake_Layanan())
    # print("\n\nTest fake_Layanan_Perawatan_Rutin\n")
    # print(fake_Layanan_Perawatan_Rutin())
    # print("\n\nTest fake_Layanan_Asuransi\n")
    # print(fake_Layanan_Asuransi())
    # print("\n\nTest fake_Kendaraan\n")
    print(fake_Kendaraan())
    # print("\n\nTest fake_Mobil\n")
    # print(fake_Mobil())
    # print("\n\nTest fake_Motor\n")
    # print(fake_Motor())
    # print("\n\nTest fake_Perawatan_Rutin\n")
    # print(fake_Perawatan_Rutin())
    # print("\n\nTest fake_Asuransi\n")
    # print(fake_Asuransi())
    # print("\n\nTest fake_Pelanggan\n")
    # print(fake_Pelanggan())
    # print("\n\nTest fake_Pegawai\n")
    # print(fake_Pegawai())
    # print("\n\nTest fake_Peminjaman\n")
    # print(fake_Peminjaman())
    # print("\n\nTest fake_Detail_Peminjaman\n")
    # print(fake_Detail_Peminjaman())
    # print("\n\nTest fake_Pelayanan\n")
    # print(fake_Pelayanan())

    # with open('seeding.sql', 'w') as f:
    #     f.write(fake_Perusahaan() + '\n\n')
    #     f.write(fake_Kontak() + '\n\n')
    #     f.write(fake_Perusahaan_Perawatan() + '\n\n')
    #     f.write(fake_Perusahaan_Asuransi() + '\n\n')
    #     f.write(fake_Layanan() + '\n\n')
    #     f.write(fake_Layanan_Perawatan_Rutin() + '\n\n')
    #     f.write(fake_Layanan_Asuransi() + '\n\n')
    #     f.write(fake_Kendaraan() + '\n\n')
    #     f.write(fake_Mobil() + '\n\n')
    #     f.write(fake_Motor() + '\n\n')
    #     f.write(fake_Perawatan_Rutin() + '\n\n')
    #     f.write(fake_Asuransi() + '\n\n')
    #     f.write(fake_Pegawai() + '\n\n')
    #     f.write(fake_Pelanggan() + '\n\n')
    #     f.write(fake_Peminjaman() + '\n\n')
    #     f.write(fake_Detail_Peminjaman() + '\n\n')
    #     f.write(fake_Pelayanan() + '\n\n')

    print("Seeding SQL generated")

        


if __name__ == '__main__':
    test()