-- QUERY WITH SUB QUERY

WITH LayananPerawatanMobilElectric AS (
    SELECT Perusahaan_Perawatan AS ID_Perusahaan, Tipe_Perawatan
    FROM Kendaraan K
        NATURAL JOIN Mobil M
        NATURAL JOIN Perawatan_Rutin PR
        NATURAL JOIN Layanan_Perawatan_Rutin LPR
    WHERE
        K.Tipe_Mesin = 'Electric',
        MONTH(LPR.Tanggal_Perawatan) = 4,
        YEAR(LPR.Tanggal_Perawatan) = 2024
)
SELECT P.Nama, K.Kontak, PP.Spesialisasi, LPME.Tipe_Perawatan
FROM Perusahaan P
    NATURAL JOIN Kontak K
    NATURAL JOIN Perusahaan_Perawatan PP,
    LayananPerawatanMobilElectric LPME
WHERE
    LPME.ID_Perusahaan = P.ID_Perusahaan
GROUP BY P.ID_Perusahaan;