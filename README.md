# TUGAS 8 – Praktikum Pemrograman Mobile (Pertemuan 9)

Aplikasi ini dibuat sebagai tugas pertemuan ke-9 pada mata kuliah Pemrograman Mobile. Aplikasi ini menerapkan fitur **Login Sederhana**, **Side Menu (Drawer)**, dan navigasi halaman menggunakan Flutter. Selain itu, aplikasi memanfaatkan **Local Storage** melalui `shared_preferences` untuk menyimpan data pengguna.

---

## 👤 Identitas Pengembang
| Keterangan | Data |
|-----------|------|
| **Nama** | Yohana Des Ingrid Patricia Butarbutar |
| **NIM** | H1D023031 |
| **Program Studi** | Informatika |
| **Universitas** | Universitas Jenderal Soedirman |
| **Shift Awal** | A |
| **Shift Baru** | E |

---

## ✨ Fitur Utama
- **Login sederhana** dengan username dan password yang di-hardcode.  
- **Penyimpanan lokal** menggunakan `shared_preferences` untuk menyimpan username.  
- **Side Menu (Drawer)** untuk navigasi cepat antar halaman.  
- **Navigasi Flutter** menggunakan `MaterialPageRoute` antar halaman Login, Home, dan About.  

---

## 🧩 Penjelasan Kode

### 1. `login_page.dart`
- Menyediakan halaman login berbasis `StatefulWidget`.  
- Menggunakan dua `TextEditingController` untuk input username dan password.  
- Fungsi:
  - `saveUser()` → menyimpan username ke local storage.
  - `login()` → mengecek kecocokan username **admin** dan password **admin123**.  
- Jika login sukses → tampil dialog sukses → menuju **HomePage**.  
- Jika gagal → muncul dialog gagal.  
- UI bertema **NeoGreen Login**.

---

### 2. `home_page.dart`
- Halaman utama setelah login.  
- Memuat username dari local storage melalui `loadUser()`.  
- Menampilkan:
  - AppBar hijau bertuliskan **Dashboard**.
  - Drawer dari widget `SideMenu`.
  - Sambutan: **“Selamat datang, $username 👋”**.

---

### 3. `side_menu.dart`
- Drawer navigasi dengan warna hijau muda.  
- Isi menu:
  - Ikon akun + label **NeoGreen Menu**
  - Menu **Home** (pushReplacement)  
  - Menu **About** (push)  

---

### 4. `about_page.dart`
- Halaman statis berisi informasi sederhana tentang aplikasi.  
- Memiliki AppBar hijau dan teks deskripsi di dalam `Padding`.

---

## 📱 Tampilan Aplikasi

### a. Halaman Login
<img width="290" height="516" src="https://github.com/user-attachments/assets/c193c6a0-b9d9-4dce-9ff5-34e80f37bc86" />

### b. Halaman Home
<img width="286" height="540" src="https://github.com/user-attachments/assets/32ed07f5-53be-4b07-8342-6f64b277afc8" />

### c. Halaman Side Menu
<img width="325" height="684" src="https://github.com/user-attachments/assets/6fc31ccb-4177-497c-a38c-da900cb88067" />

---

## 📂 Struktur Folder
    lib/
    ├─ main.dart
    ├─ pages/
    │ ├─ login_page.dart
    │ ├─ home_page.dart
    │ └─ about_page.dart
    └─ widgets/
    └─ side_menu.dart
    

---

## 📝 Kesimpulan
Aplikasi ini berhasil mengimplementasikan:
- Login sederhana  
- Penyimpanan username menggunakan `SharedPreferences`  
- Navigasi menggunakan Drawer  
- Desain UI bertema hijau yang konsisten  

Aplikasi ini merupakan dasar pembelajaran Flutter untuk memahami **state**, navigasi, dan penyimpanan lokal.

---
