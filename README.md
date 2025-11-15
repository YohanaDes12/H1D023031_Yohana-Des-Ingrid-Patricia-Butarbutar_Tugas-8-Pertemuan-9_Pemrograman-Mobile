### TUGAS-8_PRAKTIKUM_PEMROGRAMAN-MOBILE_PERTEMUAN-9

---
Aplikasi ini dibuat sebagai Tugas pertemuan 9 Pemrograman Mobile untuk membangun fitur Login Sederhana dan Side Menu (Drawer) dengan navigasi halaman (routes) menggunakan Framework Flutter. Tujuan utama dari pembuatan sistem ini adalah untuk mengimplementasikan autentikasi pengguna dan navigasi antar halaman, serta memanfaatkan penyimpanan lokal (Local Storage).
---

### IDENTITAS PENGEMBANG
- **Nama:** Yohana Des Ingrid Patricia Butarbutar
- **NIM:** H1D023031
- **Program Studi:** Informatika
- **Universitas:** Universitas Jenderal Soedirman
- **Shift Awal:** A
- **Shift Baru:** E

---
## FITUR UTAMA
- Simple Login: Menggunakan hardcoded username dan password untuk simulasi autentikasi.
- Local Storage: Menyimpan username pengguna yang berhasil login menggunakan shared_preferences.
- Side Menu (Drawer): Menyediakan menu navigasi yang mudah diakses ke berbagai halaman.
- Routes: Navigasi antar halaman (Login, Home, About) menggunakan MaterialPageRoute.
---
## PENJELASAN KODE APLIKASI
- login_page.dart
  Kode ini mendefinisikan halaman login sebagai sebuah StatefulWidget bernama LoginPage. Halaman ini menggunakan dua TextEditingController, yaitu userC dan passC, untuk mengambil input username dan password dari pengguna. Fungsi saveUser() bertanggung jawab untuk menyimpan username yang berhasil masuk ke dalam penyimpanan lokal menggunakan SharedPreferences. Logika autentikasi berada dalam fungsi login(), di mana ia membandingkan input dengan nilai tetap "admin" dan "admin123"; jika cocok, pengguna diarahkan ke HomePage setelah menampilkan dialog sukses, dan jika gagal, dialog peringatan kegagalan ditampilkan. Tampilan antarmuka didesain dengan tema "NeoGreen Login" menggunakan warna hijau, box shadow, dan tombol ElevatedButton yang memenuhi lebar area login.
- home_page.dart
  Kode ini membuat HomePage, yang merupakan halaman utama setelah login, didefinisikan sebagai StatefulWidget untuk mengelola status username yang dimuat. Pada metode initState(), fungsi loadUser() dipanggil untuk mengambil username yang tersimpan dari SharedPreferences dan memperbarui variabel username di state. Tampilan halaman ini mencakup sebuah AppBar berwarna hijau dengan judul "Dashboard" dan komponen SideMenu yang dipasang pada properti drawer. Konten utama halaman menampilkan teks sambutan personal "Selamat datang, $username 👋" dengan gaya teks tebal berwarna hijau, mengambil nilai username yang telah berhasil dimuat.
- side_menu.dart
  SideMenu adalah widget StatelessWidget yang berfungsi sebagai drawer navigasi aplikasi. Ia mengembalikan widget Drawer yang berisi ListView dengan padding di bagian atas. Tampilan menu memiliki latar belakang hijau muda (Colors.green.shade50) dan dilengkapi dengan bagian kepala berupa ikon akun dan teks "NeoGreen Menu". Terdapat dua item navigasi utama yang direpresentasikan oleh ListTile: "Home", yang menggunakan Navigator.pushReplacement untuk memastikan pengguna kembali ke HomePage, dan "About", yang menggunakan Navigator.push untuk membuka AboutPage.
- about_page.dart
 Kode ini mendefinisikan AboutPage sebagai StatelessWidget sederhana. Tujuannya adalah menampilkan informasi statis tentang aplikasi. Halaman ini memiliki Scaffold dengan AppBar berwarna hijau dengan judul "About App". Konten utama diletakkan di dalam widget Padding dan berupa Text yang menjelaskan bahwa aplikasi ini adalah bagian dari modul pembelajaran Flutter dan menggunakan tema warna hijau. Teks deskripsi ini ditampilkan dengan ukuran font 18. 

---
## TAMPILAN HALAMAN APLIKASI
a. Tampilan Halaman Login
<img width="290" height="516" alt="image" src="https://github.com/user-attachments/assets/c193c6a0-b9d9-4dce-9ff5-34e80f37bc86" />
b. Tampilan Halaman Home-page
<img width="286" height="540" alt="image" src="https://github.com/user-attachments/assets/32ed07f5-53be-4b07-8342-6f64b277afc8" />
c. Tampilan Halaman Side-menu
<img width="325" height="684" alt="image" src="https://github.com/user-attachments/assets/6fc31ccb-4177-497c-a38c-da900cb88067" />

---
## STRUKTUR FOLDER APLIKASI
Agar rapi dan mengikuti standar Flutter, folder lib/ disusun menjadi:
lib/
 ├─ main.dart
 ├─ pages/
 │    ├─ login_page.dart
 │    ├─ home_page.dart
 │    └─ about_page.dart
 └─ widgets/
      └─ side_menu.dart
---

## KESIMPULAN
Aplikasi Flutter yang kamu buat berhasil mengimplementasikan:
- Login sederhana dengan validasi manual
- Penyimpanan username menggunakan SharedPreferences
- Navigasi antar halaman menggunakan Side Menu
- UI yang modern dan konsisten dengan tema hijau
