# Reverse Engineering Report: Off The Tracks (Android Game)

## 📌 Ringkasan Proyek

Proyek ini bertujuan untuk memodifikasi jumlah koin/uang awal pada game Android **"Off The Tracks"**. Berbagai metode *reverse engineering* telah dicoba, mulai dari analisis statis (ekstraksi APK, decompile Java/Smali, analisis file DEX) hingga analisis dinamis (Frida hooking, memory scanning dengan GameGuardian, debugging dengan Cutter). Berikut adalah rangkuman lengkap dari setiap pendekatan beserta hasil dan kendalanya.

---

## 🧪 Metode yang Dicoba

| Metode | Tools | Hasil | Kendala |
|--------|-------|-------|---------|
| **Ekstraksi APK & Analisis Statis** | `apktool`, `jadx`, `Cutter` | Berhasil mengekstrak resource dan Smali. Tidak ditemukan file `Assembly-CSharp.dll`. | Game menggunakan teknologi **IL2CPP** – logika berada di `libil2cpp.so`. File `.so` tidak muncul di hasil ekstrak (mungkin diproteksi/dienkripsi). |
| **Analisis IL2CPP** | `Il2CppDumper` | Tidak bisa dijalankan karena file `libil2cpp.so` tidak ditemukan di APK (mungkin diunduh dinamis atau diproteksi). | Proteksi tambahan dari developer (packing, enkripsi). |
| **Analisis Dinamis dengan Frida** | `frida-server`, script hooking | Berhasil koneksi ke emulator (LDPlayer). Script `Java.use()` gagal menemukan class `GameData` karena game **bukan Mono**. | Game IL2CPP dengan **stripping simbol** – fungsi native (`il2cpp_class_from_name`, dll.) tidak ada/tersembunyi. |
| **Analisis Statis dengan Cutter** | `Cutter` (RE framework) | Menunjukkan file DEX dengan 5335 fungsi, entropy 5.95, hanya library Android standar. Tidak ada kode Java terkait uang. | Konfirmasi bahwa logika uang ada di native code (`libil2cpp.so`). |
| **Memory Scanning (GameGuardian)** | `GameGuardian` (di LDPlayer root) | **Berhasil** menemukan beberapa alamat nilai coin, meskipun tidak permanen. | Nilai coin bisa berubah setelah beberapa kali refine, tapi seringkali kembali ke asli setelah restart game (enkripsi dinamis?). |
| **Dumping Data Game** | `adb backup`, `adb pull` | Berhasil mengambil folder data game (`/data/data/com.daffarahman.offthetracks`). | File `shared_prefs` hanya berisi preferensi Unity, tidak ada nilai coin. Database SQLite kosong/tidak relevan. |

---

## 🧠 Kesimpulan Akhir

1. **Game "Off The Tracks" adalah aplikasi Unity dengan backend IL2CPP yang diproteksi kuat.**
   - Tidak ada file `Assembly-CSharp.dll`.
   - Simbol IL2CPP dihilangkan (*stripped*) sehingga hooking dengan Frida tidak memungkinkan.
   - File `libil2cpp.so` tidak dapat diekstrak langsung dari APK (mungkin diunduh secara dinamis atau dienkripsi).

2. **Metode paling efektif untuk mengubah nilai uang (sementara) adalah dengan GameGuardian – teknik Fuzzy Search.**
   - Lakukan pencarian `Unknown` → `Changed` berkali-kali hingga tersisa sedikit alamat.
   - Alamat yang ditemukan dapat diedit secara real-time, namun tidak permanen setelah game direstart.
   - Disarankan menyimpan alamat ke **Favorites** di GameGuardian untuk penggunaan ulang.

3. **Modifikasi permanen (APK mod) tidak dapat dilakukan tanpa akses ke `libil2cpp.so` atau membongkar proteksinya.**
   - Diperlukan teknik *memory dumping* untuk mengambil `.so` dari memori saat game berjalan.
   - Setelah itu, analisis dengan IDA Pro/Ghidra dan *patch binary* – tingkat kesulitan tinggi.

4. **Nilai uang tidak disimpan dalam shared preferences atau database SQLite yang dapat diedit langsung.**  
   - Data kemungkinan berada di memori dengan enkripsi dinamis atau di server (jika game online).

---

## 🛠️ Rekomendasi untuk Pengguna Akhir

| Jika Anda ingin... | Solusi |
|--------------------|--------|
| **Mengubah uang dengan mudah dan cepat** | Gunakan **GameGuardian** dengan *Fuzzy Search* (seperti panduan di atas). Hasil tidak permanen, tapi efektif. |
| **Modifikasi permanen (APK mod)** | Cari versi game yang tidak diproteksi, atau coba *dump* `libil2cpp.so` dari memori menggunakan **GG** (menu → Dump Memory). Lalu analisis dengan **Il2CppDumper** dan **dnSpy** (untuk DummyDll). |
| **Belajar reverse engineering lebih dalam** | Pelajari teknik *binary patching* untuk IL2CPP, cara *bypass* enkripsi, dan *symbol restoration*. Game ini kasus yang baik untuk level menengah. |
| **Hanya ingin bermain tanpa ribet** | Cari **mod APK** di forum terpercaya (Platinmods, Sbenny, dll.) – risiko malware tetap ada. |

---

## 📚 Pembelajaran yang Diperoleh

- **Teknologi IL2CPP** menyulitkan modifikasi karena logika game berubah menjadi kode C++ native.
- **Proteksi stripping simbol** membuat hooking dinamis (Frida) sangat sulit tanpa pengetahuan lanjutan.
- **GameGuardian dengan Fuzzy Search** adalah senjata pamungkas untuk game dengan enkripsi sederhana atau dinamis.
- Analisis statis (Cutter, jadx) tetap penting untuk memahami struktur awal game.
- **Kerja sama antara berbagai tools** (apktool, adb, frida, gg) adalah kunci dalam RE Android.

---

## ⚠️ Catatan Keamanan

- Semua percobaan dilakukan di lingkungan **emulator LDPlayer** yang di-root, bukan di HP fisik.
- Tidak ada file berbahaya yang dieksekusi di luar emulator.
- Game yang dianalisis berasal dari sumber tidak resmi – selalu waspada terhadap APK dari pihak ketiga.

---

## 🔗 Referensi & Tools

| Tool | Fungsi |
|------|--------|
| [apktool](https://apktool.org/) | Ekstraksi dan rebuild APK |
| [jadx](https://github.com/skylot/jadx) | Decompile DEX ke Java |
| [Cutter](https://cutter.re/) | Reverse Engineering framework (GUI untuk radare2) |
| [Frida](https://frida.re/) | Dynamic instrumentation |
| [GameGuardian](https://gameguardian.net/) | Memory scanner/editor untuk Android |
| [Il2CppDumper](https://github.com/Perfare/Il2CppDumper) | Ekstrak metadata IL2CPP |
| [LDPlayer](https://www.ldplayer.net/) | Emulator Android (root support) |

---

## 🧾 Penutup

Proses *reverse engineering* game "Off The Tracks" membuktikan bahwa game modern (terutama yang menggunakan Unity IL2CPP) memiliki proteksi yang cukup tangguh untuk pemula. Namun, dengan kombinasi **memory scanning (GameGuardian)** dan pemahaman dasar tentang arsitektur Android, kita tetap bisa mencapai tujuan – meskipun tidak permanen.

pada scanning game guardian ketika dijalankan pada  ada 4 addres yang dapat mengubah "highscore" 
1. 76385A53A2D0
2. 76385A53AC10
3. 76385A55FC90
4. 76385A55FFF0


> **Semakin dalam kita menggali, semakin banyak yang kita pelajari. Teruslah bereksperimen!**  
> – Pengalaman langsung dari lapangan.

---

📅 *Tanggal laporan: 31 Mei 2026*  
✍️ *Disusun berdasarkan percobaan nyata menggunakan LDPlayer, Frida, GameGuardian, dan Cutter.*
