Nama    : Azzahra Anjelika Borselano
NPM     : 2406419663
Kelas   : B

TUGAS 7 

1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.
-> Widget tree pada Flutter adalah struktur hierarki yang menggambarkan bagaimana widget tersusun dalam aplikasi, di mana setiap widget dapat memiliki widget lain sebagai turunannya. Hubungan parent-child berarti widget induk mengontrol tata letak serta behavior widget anak, sementara widget anak menerima konteks tata letak dan bisa menyesuaikan tampilannya berdasarkan properti yang diberikan oleh parent.

2. Sebutkan semua widget yang kamu gunakan dalam proyek ini dan jelaskan fungsinya.
    - Scaffold -> Memberikan struktur dasar halaman Flutter, seperti AppBar, body, dan elemen utama lain dalam tampilan layar.
    - AppBar -> Menampilkan bar di bagian atas aplikasi.
    - Text -> Digunakan untuk menampilkan teks di layar, seperti judul, nama, NPM, tulisan “Welcome to KuSepak”, dan lainnya.
    - Padding -> Memberikan jarak di sekeliling widget untuk mengatur tata letak agar tidak saling menempel.
    - Column -> Menyusun widget secara vertikal dari atas ke bawah. Banyak digunakan untuk mengatur layout dalam proyek ini.
    - Row -> Menyusun widget secara horizontal (samping–samping). Digunakan untuk menampilkan InfoCard secara sejajar.
    - SizedBox -> Digunakan untuk memberi jarak atau ruang kosong (misalnya tinggi 16).
    - Center -> Agar posisi anak widget di tengah.
    - GridView.count -> Menampilkan item dalam bentuk grid dengan 3 kolom. Digunakan untuk menampilkan daftar ItemCard.
    - Card -> Membuat elemen berbentuk kartu dengan shadow. Dipakai pada InfoCard.
    - Container -> Kotak pembungkus yang dapat berisi padding, ukuran, warna, atau penataan lain.
    - MediaQuery -> Digunakan untuk mendapatkan ukuran layar perangkat agar elemen dapat menyesuaikan ukuran secara responsif.
    - Material -> Memberi tampilan material design pada widget. Digunakan pada ItemCard untuk memberi efek InkWell dan warna latar.
    - InkWell -> Memberikan efek ripple saat widget ditekan serta mendeteksi aksi onTap.
    - Icon -> Menampilkan ikon (misalnya bola baseball, football, dan tanda tambah pada ItemCard).
    - SnackBar -> Pesan kecil yang muncul di bagian bawah layar ketika item ditekan.
    - ScaffoldMessenger -> Mengelola penampilan SnackBar pada halaman (menampilkan, menyembunyikan, mengganti).
    - EdgeInsets -> Digunakan untuk menentukan nilai padding (misalnya EdgeInsets.all(16.0)).
    - TextStyle -> Mengatur gaya teks seperti warna, ukuran font, dan ketebalan.
    - Colors -> Kumpulan warna bawaan Flutter, digunakan untuk memberi warna pada ikon, teks, dan kartu.

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.
-> Widget MaterialApp berfungsi sebagai container utama aplikasi yang menyediakan konfigurasi tema, navigasi, dan struktur dasar sesuai dengan desain Material Design. Widget ini sering digunakan sebagai widget root karena mempermudah pengaturan global aplikasi seperti route, style, dan localizations sehingga komponen di dalamnya tetap konsisten.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?
-> StatelessWidget adalah widget yang tidak memiliki state atau kondisi yang dapat berubah setelah dibangun, sehingga tampilannya bersifat statis. StatefulWidget memiliki state yang dapat berubah selama aplikasi berjalan, sehingga tampilannya dapat diperbarui saat terjadi perubahan. StatelessWidget dapat digunakan untuk UI/design yang static sedangkan StatefulWidget dipakai untuk UI yang membutuhkan interaksi atau pembaruan data.

5. Apa itu BuildContext dan mengapa penting di Flutter?  Bagaimana penggunaannya di metode build?
-> BuildContext adalah objek yang memberikan informasi tentang posisi widget dalam widget tree dan digunakan untuk mengakses ancestor widget, tema, serta navigasi. Dalam metode build, BuildContext penting untuk menampilkan widget dengan gaya atau data yang sesuai dengan lingkungan UI-nya dan untuk memanggil fungsi seperti Navigator atau Theme.of(context).

7. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".
-> Hot reload artinya me-refresh tampilan tanpa memulai ulang aplikasi dari awal. Jika terdapat perubahan tampilan atau teks pada kode aplikasi, hot reload akan membuat tampilan aplikasi langsung berubah tapi data yang sudah ada tetap tersimpan.
-> Hot restart artinya memulai ulang aplikasi dari awal. Semua data atau state yang sedang berjalan akan kembali ke awal.