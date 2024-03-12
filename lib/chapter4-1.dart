import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recipe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  // Daftar path gambar
  final List<String> imagePaths = [
    'assets/nasigoreng.jpeg', // Ganti dengan path gambar Anda
    'assets/somay.jpeg',
    'assets/pempek.jpg',
    'assets/pecak.jpg',
    'assets/bakso.jpg',
  ];

  // Daftar deskripsi untuk setiap item
  final List<String> itemDescriptions = [
    'NasGor', // Ganti dengan deskripsi yang sesuai
    'Somay',
    'Pempek',
    'Pecak',
    'Bakso',
  ];

  // Daftar waktu untuk setiap item (dalam menit)
  final List<int> itemTimes = [
    25, // Misalnya, waktu nasi goreng adalah 60 menit
    30, // Misalnya, waktu somay adalah 30 menit
    45, // Misalnya, waktu pempek adalah 45 menit
    40, // Misalnya, waktu pecak adalah 40 menit
    50, // Misalnya, waktu bakso adalah 50 menit
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resep Makanan'),
        leading: IconButton(
          icon: Image.asset('assets/resep.png'), // Ganti dengan path logo Anda
          onPressed: () {
            // Tambahkan fungsi untuk tombol menu di sini
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Tambahkan fungsi untuk tombol pencarian di sini
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Katalog Resep Makanan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                for (int i = 0; i < 3; i++)
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(
                            10), // Mengatur sudut menjadi sedikit lebih bulat
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.restaurant_menu), // Ganti dengan logo Anda
                          SizedBox(width: 5),
                          Text(
                            i == 0
                                ? 'ALL'
                                : i == 1
                                    ? 'Makanan'
                                    : 'Minuman', // Ganti teks sesuai dengan indeks
                          ),
                        ],
                      ),
                    ),
                  ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    // Tambahkan fungsi untuk tombol pengaturan di sini
                  },
                ),
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: List.generate(
                5,
                (index) {
                  return GridTile(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.asset(
                                imagePaths[
                                    index], // Menggunakan path gambar sesuai indeks grid
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                color: const Color.fromARGB(255, 228, 74, 74)
                                    .withOpacity(0.5),
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      itemDescriptions[
                                          index], // Menggunakan deskripsi sesuai indeks grid
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          '${itemTimes[index]} menit',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan fungsi untuk tombol tambah di sini
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red, // Ubah warna latar belakang
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, // Atur posisi floating action button
    );
  }
}
