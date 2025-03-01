# sltr-test-welcomeapp
SLTR Test
## Deskripsi Proyek

Proyek ini adalah aplikasi sederhana yang menampilkan pesan selamat datang kepada pengguna. Aplikasi ini dibangun menggunakan Docker dan dikelola dengan Docker Compose. Aplikasi ini di-deploy ke server menggunakan GitHub Actions.

## Cara Kerja Aplikasi

Aplikasi Selamat Datang berjalan di dalam kontainer Docker. Ketika pengguna mengakses aplikasi melalui browser, mereka akan melihat pesan selamat datang dengan input-an Nama yang dimasukan.

## Cara Kerja GitHub Actions

GitHub Actions digunakan untuk mengotomatiskan proses CI/CD (Continuous Integration/Continuous Deployment) untuk aplikasi ini. Berikut adalah langkah-langkah yang dilakukan oleh GitHub Actions:

1. **Gihub Action** berjalan hanya saat dijalankan secara manual melalui halaman Actions dan juga memasukan informasi tag
2. **Checkout Kode**: Mengambil kode sumber dari repositori.
3. **Build & Push Docker Image**: Membuat docker image dan push ke registry Github Container Registry
4. **Set Up SSH**: Mengatur koneksi SSH ke server untuk melakukan deploy.
5. **Update File docker-compose.yml**: Menggunakan perintah `sed` untuk memperbarui tag gambar Docker di file `docker-compose.yml` sesuai dengan input pengguna.
6. **Salin File ke VM**: Menggunakan `scp` untuk menyalin file `docker-compose.yml` yang telah diperbarui ke server.
7. **Jalankan Skrip Deploy**: Menggunakan SSH untuk menjalankan skrip deploy yang mengatur dan menjalankan aplikasi di server.

## Penyesuaian Konfigurasi

Anda dapat menyesuaikan beberapa konfigurasi di dalam file-file berikut:

1. **docker-compose.yml**: 
   - Ubah nama gambar Docker dan tag sesuai dengan kebutuhan Anda. Pastikan untuk memperbarui bagian `image: your-docker-image:latest` dengan nama gambar yang sesuai.

2. **ConfigMap dan Secret**:
   - Sesuaikan nilai di dalam file `configmap.yaml` dan `secret.yaml` untuk mengatur pesan selamat datang dan informasi sensitif lainnya.

3. **Skrip Deploy**:
   - Ubah skrip `script-deploy.sh` sesuai dengan kebutuhan aplikasi Anda. Skrip ini bertanggung jawab untuk mengatur dan menjalankan aplikasi di server.
4. **Ingress**:
   - Melakukan penyesuaian pada domain yang akan digunakan.

Dengan mengikuti petunjuk di atas, Anda dapat dengan mudah menyesuaikan dan mengelola aplikasi Selamat Datang ini sesuai dengan kebutuhan Anda.
