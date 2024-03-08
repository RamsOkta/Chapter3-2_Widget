import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Baru',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewRecipePage(),
    );
  }
}

class NewRecipePage extends StatefulWidget {
  @override
  _NewRecipePageState createState() => _NewRecipePageState();
}

class _NewRecipePageState extends State<NewRecipePage> {
  TextEditingController _namaController = TextEditingController();
  TextEditingController _estimasiWaktuController = TextEditingController();
  TextEditingController _deskripsiController = TextEditingController();
  TextEditingController _resepController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Resep Baru',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Close',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  height: 75,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Super Cool, You Are Creating a New Recipe! Lets Start',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama Makanan',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextField(
                      controller: _namaController,
                    ),
                    SizedBox(
                        height:
                            4), // Tambahkan jarak antara TextField dan keterangan
                    Text(
                      'Silahkan masukkan nama makanan',
                      style: TextStyle(color: Colors.grey[400], fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Estimasi Waktu',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextField(
                      controller: _estimasiWaktuController,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Silahkan masukkan estimasi waktu pembuatan',
                      style: TextStyle(color: Colors.grey[400], fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deskripsi',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextField(
                      controller: _deskripsiController,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Silahkan masukkan deskripsi makanan',
                      style: TextStyle(color: Colors.grey[400], fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Resep',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextField(
                      controller: _resepController,
                      maxLines: null,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Silahkan masukkan resep makanan',
                      style: TextStyle(color: Colors.grey[400], fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: Text(
                    'Tambah Resep',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
