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
        # Menulis header
        file.write('(' + ','.join(header) + '),\n')
        # Menulis setiap baris data dengan format yang diminta
        for row in data:
            row_str = '(' + ','.join(row) + '),\n'
            file.write(row_str)

# Membaca data dari file teks asli
input_file = 'halo.txt'
data = read_data(input_file)

# Menyiapkan data untuk relasi R1 dan R2 sesuai dekomposisi BCNF
R1_data = []
R2_data = []

for row in data:
    ID_Peminjaman, Status_Peminjaman, Tanggal_Peminjaman, Tanggal_Pengembalian = row
    R1_data.append((Tanggal_Peminjaman, Tanggal_Pengembalian, Status_Peminjaman))
    R2_data.append((ID_Peminjaman, Tanggal_Peminjaman, Tanggal_Pengembalian))

# Menuliskan data ke file teks baru dengan format yang diminta
write_data('R1.txt', R1_data, ['Tanggal_Peminjaman', 'Tanggal_Pengembalian', 'Status_Peminjaman'])
write_data('R2.txt', R2_data, ['ID_Peminjaman', 'Tanggal_Peminjaman', 'Tanggal_Pengembalian'])

print("Data has been decomposed and written to R1.txt and R2.txt with the specified format.")
