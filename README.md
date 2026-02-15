# Proyek Modul 1: Counter App dengan Prinsip SRP
**Nama:** Muhammad Ihsan Ramadhan
**NIM:** 241511083
**Kelas:** 2C - D3 Teknik Informatika

---

## Deskripsi Proyek
Aplikasi ini adalah pengembangan dari *Counter App* bawaan Flutter. Proyek ini bertujuan untuk menerapkan **Single Responsibility Principle (SRP)** dengan memisahkan logika (*Controller*) dan tampilan antarmuka (*View*).

## Fitur Utama
1.  **Multi-Step Counter:** User bisa mengatur kelipatan angka (step) menggunakan slider.
2.  **History Logger:** Mencatat riwayat aktivitas dengan batas penyimpanan maksimal 5 data terakhir.
3.  **UI Polishing:** Pembedaan warna visual pada riwayat (hijau untuk tambah, merah untuk kurang).
4.  **UX Improvement:** Konfirmasi modal yang muncul saat melakukan reset untuk mencegah penghapusan data secara tidak sengaja.

---

## Self-Reflection: Implementasi SRP
**Pertanyaan:** Bagaimana prinsip SRP membantu kalian saat harus menambah fitur History Logger tadi?

**Jawaban Refleksi:**
Penerapan prinsip SRP sangat membantu saya dalam menjaga kode tetap rapi dan terstruktur, terutama saat mengerjakan fitur *History Logger*.

1.  **Fokus Pengerjaan Lebih Jelas:**
    Saat saya harus membuat logika pembatasan riwayat (maksimal 5 data) dan timestamp, saya bisa fokus sepenuhnya ngoding di file `counter_controller.dart` tanpa terganggu oleh kode-kode tampilan widget. Saya tidak perlu takut merusak tampilan tombol atau layout saat sedang mengutak-atik logika List.

2.  **Kemudahan Modifikasi:**
    Ketika saya mengerjakan homework untuk memberikan warna berbeda pada riwayat, saya hanya perlu mengubah file `counter_view.dart`. Logika penyimpanan data di controller sama sekali tidak perlu disentuh. Pemisahan "Otak" dan "Wajah" ini membuat proses debugging jadi lebih cepat karena saya langsung tahu di mana masalahnya.

3.  **Clean Code:**
    Tanpa SRP, file `main.dart` saya pasti akan penuh dengan variabel `List`, fungsi logika, dan tumpukan widget. Dengan SRP, file view saya bersih dan hanya berisi kode untuk menampilkan data yang sudah diolah oleh controller.

---

## Tech Stack & Tools
* **Language:** Dart
* **Framework:** Flutter
* **IDE:** Visual Studio Code
