
# RedzUI Termux Script

**RedzUI** adalah script yang memungkinkan kamu mengubah tampilan Termux ke tema keren seperti Ubuntu, Kali Linux, Arch Linux, Iron Man, dan lain-lain! 😎💻

## Cara Pasang di Termux

1. **Install Termux**:
   - Pastikan kamu sudah menginstall Termux di perangkat Android kamu. Kamu bisa mendownloadnya di [F-Droid](https://f-droid.org/packages/com.termux/).

2. **Update dan Install Dependensi**:
   - Buka Termux dan jalankan perintah berikut untuk memastikan semua paket up-to-date:
     ```bash
     pkg update && pkg upgrade
     pkg install git
     pkg install curl
     pkg install neofetch
     ```

3. **Clone Repository RedzUI**:
   - Clone repository ini dengan perintah:
     ```bash
     git clone https://github.com/petangZI/RedzUI.git
     ```

4. **Masuk ke Folder RedzUI**:
   - Pindah ke direktori tempat kamu mengclone repository:
     ```bash
     cd RedzUI
     ```

5. **Ubah File `redzUI.sh` Menjadi Eksekusi**:
   - Ganti permission file `redzUI.sh` agar bisa dijalankan:
     ```bash
     chmod +x redzUI.sh
     ```

6. **Jalankan Script**:
   - Jalankan script dengan perintah:
     ```bash
     ./redzUI.sh
     ```

7. **Pilih Tema**:
   - Setelah menjalankan script, kamu akan diminta untuk memilih tema yang diinginkan. Pilih nomor sesuai dengan tema yang ingin kamu gunakan.

## Fitur
- Ubuntu Theme
- Kali Linux Theme
- Debian Theme
- Arch Linux Theme
- Parrot OS Theme
- Iron Man Theme
- Hacker Mode

## Contoh Tampilan

Setelah memilih tema, tampilan Termux kamu akan berubah sesuai dengan tema yang dipilih. 🎨

---

*Dibuat dengan ❤️ oleh king RED 😈*
