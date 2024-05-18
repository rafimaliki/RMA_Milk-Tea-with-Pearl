import csv

# Fungsi untuk membaca data dari file teks asli
def read_data(file_name):
    data = []
    with open(file_name, 'r') as file:
        reader = csv.reader(file)
        for row in reader:
            data.append(tuple(row))
    return data

# Fungsi untuk menulis data ke file teks baru dengan format yang diminta
def write_data(file_name, data, header):
    with open(file_name, 'w', newline='') as file:
        file.write('(' + ','.join(header) + '),\n')
        for row in data:
            row_str = '(' + ','.join([f"{item}" if isinstance(item, str) else str(item) for item in row]) + '),\n'
            file.write(row_str)

# Membaca data dari file teks asli
input_file = 'halo2.txt'
data = read_data(input_file)

# Menyiapkan data untuk relasi R1 dan R2 sesuai dekomposisi BCNF
R1_data = []
R2_data = []

for row in data:
    ID_Kendaraan, Merek, Plat, Tipe_Mesin = row
    R1_data.append((ID_Kendaraan, Plat))
    R2_data.append((Plat, Merek, Tipe_Mesin))

# Menuliskan data ke file teks baru dengan format yang diminta
write_data('R1plat.txt', R1_data, ['Plat', 'ID_Kendaraan'])
write_data('R2kendaraan.txt', R2_data, ['Merek', 'Plat', 'Tipe_Mesin'])

print("Data has been decomposed and written to R1.txt and R2.txt with the specified format.")
