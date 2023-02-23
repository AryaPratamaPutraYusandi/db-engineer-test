# db-engineer-test

1. Apa yang temen-temen ketahui tentang Database?

Database atau basis data adalah kumpulan informadi yang disimpan di dalam komputer secara sistematik sehingga dapat diperiksa menggunakan suatu program komputer untuk memperoleh informasi dari basis data tersebut. Kegunaan utama sistem basis data adalah agar pemakai mampu menyusun suatu pandangan (view) abstraksi data. Database juga bisa diartikan sebagai sebuah sistem yang berfungsi mengumpulkan data, arsip, atau tabel yang disimpan dan terhubung ke media elektronik, seperti aplikasi atau situs web. Database membuat penyimpanan dan pengelolaan data lebih efisien.
 
2. Apa bedanya antara Database dengan Files?

Pada dasarnya semua sistem informasi akan membuat (create), membaca (read), memperbarui (update), dan menghapus (delete) data. Data-data tersebut akan disimpan di dalam file dan database, dimana keduanya masing-masing memiliki berbagai keuntungan serta kelemahan.

File adalah kumpulan record yang serupa, seperti file customer, file order, dan file produk. Pada lingkungan file, data storage akan dibangun di sekitar aplikasi yang akan menggunakan file-file. File memiliki beberapa keuntungan, yaitu:

File konvensional relatif lebih mudah untuk didesain dan diimplementasikan karena pada dasarnya akan didesain untuk digunakan dengan sebuah aplikasi atau sistem informasi tunggal, seperti account receivable atau Kita dapat secara mudah menentukan data yang akan ditangkap dan disimpan untuk memproduksi output-output itu, serta mendefinisikan organisasi file yang terbaik untuk persyaratan-persyaratan output pengguna akhir sistem yang telah kita pahami sebelumnya.
File konvensional sedang tumbuh pesat, sehingga file konvensional dapat digunakan dioptimalisasi untuk akses aplikasi. File-file ini biasanya tidak mengerjakan bagian database.
Selain itu terdapat pula beberapa kelemahan file, diantaranya:

Terdapat duplikasi item-item data pada berbagai file. File-file cenderung dibangun di sekitar aplikasi tunggal tanpa mempertimbangkan aplikasi lain di masa depan, sehingga elemen-elemen data akan tersimpan secara berlebihan pada beberapa file yang berbeda.
File tidak fleksibel dan tidak dapat diskalakan. File biasanya didesain untuk mendukung persyaratan dan program terkini dari sebuah aplikasi tunggal. Jika kita membutuhkan laporan atau query baru di masa depan, file-file akan distruktur kembali karena struktur aslinya tidak dapat mendukung secara efektif atau efisien terhadap persyaratan-persyaratan baru. Tetapi jika kita memilih untuk mengatur file-file Kembali, semua program yang menggunakan file tersebut juga harus ditulis kembali sehingga reorganisasi menjadi tidak praktis.

B. Database
Database adalah kumpulan file yang saling terkait. Kata kunci “saling terkait” pada database menjelaskan bagaimana record setiap file harus memperbolehkan hubungan-hubungan untuk menyimpan file–file lain. Contohnya adalah bagaimana sebuah database sales mungkin terdiri dari record order yang terhubung pada record file customer dan file produk.

Database tidak begitu bergantung pada aplikasi-aplikasi yang akan menggunakannya. Pada lingkungan database, aplikasi-aplikasi akan dibangun di sekitar database yang sudah diintegrasikan untuk berbagi-pakai database tersebut.

Database memiliki beberapa keuntungan, yaitu:

Database mampu berbagi-pakai data yang sama di banyak aplikasi dan sistem. Meskipun demikian membangun super database tidaklah praktis, sehingga sebagian besar organisasi akan membangun beberapa database yang masing-masing akan berbagi-pakai data dengan beberapa sistem informasi.
Data akan disimpan dalam format yang fleksibel. Hal ini disebabkan database didefinisikan secara terpisah dari sistem informasi dan program-program aplikasi yang akan menggunakannya. Database memperbolehkan kita untuk menggunakan data dengan cara tidak seperti ditentukan oleh pengguna akhir. Jika database didesain dengan bagus, maka kombinasi berbeda dari data yang sama dapat diakses dengan mudah untuk kebutuhan laporan atau query baru di masa depan.
Database menyediakan skalabilitas superior dimana dapat ditingkatkan atau dikembangkan untuk menemukan kebutuhan-kebutuhan perubahan pada sebuah organisasi.
Selain itu terdapat pula beberapa kelemahan database, diantaranya:

Teknologi database lebih kompleks dibandingkan dengan teknologi file, sehingga butuhkan perangkat lunak khusus yang disebut Database Management System (DBMS).
Teknologi database membutuhkan investasi yang cukup besar, karena analis dan programmer harus mempelajari bagaimana menggunakan DBMS. Hal ini sangatlah penting demi mencapai manfaat teknologi database.
Meningkatnya vulnerabilitas yang melekat pada penggunaan data berbagi-pakai. Penggambaran yang tepat adalah bagaimana kita menempatkan semua telur yang kita miliki hanya pada satu keranjang. Dibutuhkan backup dan recovery, serta keamanan sehingga diharapkan mampu mengurangi masalah.

3. Apa yang temen-temen ketahui tentang Database Relational Management System (RDBMS)?

RDBMS adalah  database yang berbasis model relasional. Model relasional sendiri menyimpan dan menyediakan akses ke titik data yang terkait satu sama lain. Pada dasarnya, RDBMS memindahkan data ke dalam database, menyimpannya, dan mengambilnya kembali, sehingga dapat dimanipulasi oleh aplikasi.
 
4. Apakah temen-temen pernah menggunakan database design? menggunakan methode apa?

sudah, metode yang digunakan adalah ER diagram

5. Apakah temen-temen pernah melakukan configurasi database? seperti Cluster, High Available, Fail-Over or Single cluster jika pernah sebetukan dan menggunakan teknology apa?

belum pernah, pernah namun mengetahui teori basisnya





kemudian bagaimana untuk melakukan tuningnya jika nanti pada request query harus memenuhi 1000 tps (Transactions per Second) untuk query yang compleks?

untuk melakukan tunning pada database untuk menghandle 1000 tps dapat melakukan beberapa hal seperti

1. Query Optimization
query yang tidak efecient dapat mengakibatkan kelambatan dalam melakukan request, seperti JOIN atau EXIST
2. Data Defragmentation
jika menggukan outdated legacy system akan sering membuat query berkerja lambat untuk menangkap data
3. Increase Memory
meng upgrade memory dapat mempercepat performance database
4.Improve Indexes
Indeks berfungsi sebagai sistem manajemen pengarsipan database. Ketika database diindeks dengan benar, bisnis dapat mengalami peningkatan efisiensi untuk pengambilan data karena file tidak terlalu sulit untuk ditemukan.
