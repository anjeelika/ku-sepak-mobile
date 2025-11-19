Nama    : Azzahra Anjelika Borselano
NPM     : 2406419663
Kelas   : B

Tugas 9
1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?
- Model Dart diperlukan agar data dari JSON memiliki struktur yang jelas, tipe yang konsisten, dan aman digunakan di seluruh aplikasi. Dengan model, kita bisa memastikan setiap field memiliki tipe data yang sesuai sehingga menghindari error runtime akibat tipe yang tidak terduga. Jika hanya menggunakan Map<String, dynamic>, kita kehilangan validasi tipe dan null-safety, sehingga rawan terjadi bug seperti akses key yang salah atau nilai null yang tidak ter-handle. Selain itu, model membuat kode lebih mudah dibaca, dirawat, dan diperluas ketika backend berubah.

2. Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.
- Package http adalah library umum untuk melakukan request tanpa autentikasi, misalnya GET/POST biasa ke server publik. Sementara CookieRequest dirancang khusus untuk berkomunikasi dengan Django yang membutuhkan session login, karena ia menyimpan cookie autentikasi secara otomatis. http tidak menyimpan dan mengirim cookie sehingga tidak bisa mengakses endpoint Django yang terproteksi. Dengan demikian, CookieRequest digunakan ketika akses membutuhkan identitas user, sedangkan http cocok untuk endpoint yang benar-benar bebas.

3. Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
- CookieRequest menyimpan session login dalam bentuk cookie, sehingga identitas user tetap terjaga selama aplikasi berjalan. Jika setiap halaman membuat instance baru, cookie tidak akan terbawa dan Django selalu menganggap user sebagai Anonymous. Karena itu, instance yang sama harus dibagikan melalui Provider agar seluruh widget dapat mengakses kondisi login dan melakukan request terautentikasi. Ini memastikan seluruh bagian aplikasi bekerja konsisten sesuai status login pengguna.

4. Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?
- Flutter tidak bisa mengakses localhost pada emulator, sehingga Django perlu mengenali 10.0.2.2 sebagai host di ALLOWED_HOSTS. CORS harus diaktifkan agar browser/emulator mengizinkan permintaan lintas origin, sementara pengaturan SameSite dan cookie memastikan session login dapat dikirimkan kembali ke Django. Android juga memerlukan izin akses internet agar aplikasi dapat melakukan request ke server. Jika konfigurasi ini salah, Flutter akan gagal terhubung, request akan diblokir, atau autentikasi tidak akan berfungsi.

5. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
- Pengguna mengisi form pada Flutter, lalu data tersebut diubah menjadi JSON dan dikirim melalui request (GET/POST) ke Django. Django menerima payload JSON, memprosesnya, menyimpan data jika diperlukan, kemudian mengembalikan respons JSON berisi data yang sudah diolah. Flutter menerima JSON tersebut, mengubahnya menjadi objek Dart melalui model, lalu menampilkannya di UI.

6. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
- Saat register atau login, Flutter mengirimkan JSON berisi username dan password ke endpoint Django yang menangani autentikasi. Django memvalidasi kredensial, dan apabila benar, Django akan mengembalikan respons sukses serta menyertakan session cookie yang disimpan oleh CookieRequest. Cookie ini digunakan pada request selanjutnya sehingga Django mengenali user tersebut sebagai pengguna yang sudah login. Ketika logout, Flutter memanggil endpoint logout Django yang menghapus session di server, dan CookieRequest juga menghapus cookie lokal sehingga pengguna kembali ke keadaan tidak terautentikasi.

7. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
- Membuat app Django baru pada website tugas sebelumnya bernama 'authentication'
- Membuat views login, register, dan logout, menambahkan routing, dan menjalankan aplikasi pada local
- Menambahkan screens baru pada aplikasi flutter untuk register dan login page
- Membuat custom model pada flutter yang sesuai dengan model pada aplikasi django
- Membuat widget card product dan product detail
- Menambahkan screen untuk lihat semua produk
- Mengubah konfigurasi tombol-tombol yang ada di homepage serta left drawer agar bisa redirect ke halaman yang sesuai
- Membuat halaman my product, dan membuat views di django yang mem-filter product-product yang dibuat oleh user yang sedang login sekarang. Halaman my product pada flutter akan menampilkan card product yang sudah difilter tersebut