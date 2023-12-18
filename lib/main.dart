import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Bagian Atas
          Container(
            height: MediaQuery.of(context).size.height / 9,
            margin: EdgeInsets.only(top: 45),
            child: Container(
              child: Row(
                children: [
                  // Kolom Kiri
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello, Daniel",
                            style: TextStyle(
                              fontFamily: 'Google Sans',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Apa yang ingin kamu masak hari ini?",
                            style: TextStyle(
                              fontFamily: 'Google Sans',
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Kolom Kanan
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: IconButton(
                        icon: Icon(Icons.account_circle, size: 40.0),
                        onPressed: () {
                          // Aksi yang ingin diambil ketika ikon akun diklik
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Jarak antara row 1 dan 2
          SizedBox(height: 10),
          // Row Kedua
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Colors.grey, width: 1.0),
              ),
              elevation: 5.0,
              color: Color(0xFFFFFFFF),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row Pertama
                    Row(
                      children: [
                        // Kolom Kiri
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Recipes recommendation",
                                style: TextStyle(
                                  fontFamily: "Google Sans",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Get your personalized recipes recommendation in 4 steps",
                                style: TextStyle(
                                  fontFamily: "Google Sans",
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Kolom Kanan
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'images/soup.png', // Ganti dengan path gambar Anda
                            height: 80.0,
                            width: 80.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                    // Jarak antara row 1 dan 2
                    SizedBox(height: 15),
                    // Row Kedua
                    Row(
                      children: [
                        // Kolom Kiri
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {
                                // Aksi yang ingin diambil ketika tombol diklik
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFFF9EBD1),
                                onPrimary: Colors.black,
                                side: BorderSide(
                                  color: Colors.orange,
                                  width: 1.0,
                                ),
                              ),
                              child: Text("Get Started"),
                            ),
                          ),
                        ),
                        // Kolom Kanan
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40.0,
                            margin: EdgeInsets.only(left: 10.0),
                            child: ElevatedButton(
                              onPressed: () {
                                // Aksi yang ingin diambil ketika tombol diklik
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.black,
                                side: BorderSide(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                              ),
                              child: Text("Skip"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
// Container Ketiga (Card Resep)
// Container Ketiga (Card Resep)
SizedBox(height: 20),
Expanded(
  child: Container(
    padding: EdgeInsets.all(15.0),
    color: Colors.grey[200],
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row Pertama
        Row(
          children: [
            // Kolom Pertama
            Expanded(
              flex: 5, // Menggunakan flex 5 dari total 6 (5/6)
              child: Text(
                "Popular recipes",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Google Sans',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Kolom Kedua
            Expanded(
              flex: 1, // Menggunakan flex 1 dari total 6 (1/6)
              child: Text(
                "See all",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Google Sans',
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        // Jarak antara Row 1 dan 2
        SizedBox(height: 15),
        // Row Kedua
        FractionallySizedBox(
          widthFactor: 3 / 5, // Menentukan lebar relatif (3/5)
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.grey, width: 1.0),
            ),
            margin: EdgeInsets.only(right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Bagian Atas Card (Gambar)
                Container(
                  height: 80.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/spaghetti_bolognese.jpg'), // Ganti dengan path gambar Anda
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                ),
                // Bagian Bawah Card (Informasi)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Judul Makanan
                      Text(
                        "Spaghetti Bolognese",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Kategori Makanan
                      Text(
                        "Pasta",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      // Waktu Memasak
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(width: 5.0),
                          Text("30-45 minutes"),
                        ],
                      ),
                      // Tingkat Kesulitan
                      Row(
                        children: [
                          Icon(Icons.star),
                          SizedBox(width: 5.0),
                          Text("Medium"),
                        ],
                      ),
                      // Chef
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'images/chef.jpg',
                              height: 30.0,
                              width: 30.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text("Miriam Belina"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
),

        ],
      ),
    );
  }
}
