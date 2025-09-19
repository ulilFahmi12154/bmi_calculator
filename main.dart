void main() {
  List<Map<String, dynamic>> riwayat = [];

  hitungBMI(170, 65, riwayat);
  hitungBMI(160, 75, riwayat);
  hitungBMI(180, 85, riwayat);
  
}
void hitungBMI(double tinggiCm, double beratKg, List<Map<String, dynamic>> riwayat) {
  if (tinggiCm <= 0 || beratKg <= 0) {
    print("Input tidak valid!");
    return;
  }

    // Konversi tinggi dari cm ke m
  double tinggiM = tinggiCm / 100;

  // Hitung BMI
  double bmi = beratKg / (tinggiM * tinggiM);

    // Tentukan kategori
  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

    print("Tinggi: $tinggiCm cm | Berat: $beratKg kg | "
      "BMI: ${bmi.toStringAsFixed(2)} | Kategori: $kategori");
}
