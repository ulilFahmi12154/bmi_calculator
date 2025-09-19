void main() {
  List<Map<String, dynamic>> riwayat = [];

  hitungBMI(170, 65, riwayat);  // valid
  hitungBMI(-165, 75, riwayat); // tidak valid
}

void hitungBMI(double tinggiCm, double beratKg, List<Map<String, dynamic>> riwayat) {
  if (tinggiCm <= 0 || beratKg <= 0) {
    print("Input tidak valid! Tinggi dan berat harus lebih dari 0.");
    return;
  }

  print("Input valid: Tinggi = $tinggiCm cm, Berat = $beratKg kg");
}
