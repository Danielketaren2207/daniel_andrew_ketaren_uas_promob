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
      body: ListView(
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
                            'images/soup.png', 
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
          SizedBox(height: 20),
          // Popular Recipes Section
          buildPopularSection(
            title: "Popular recipes",
            buttonText: "See all",
            itemCount: 2,
          ),
          SizedBox(height: 20),
          // Popular Creators Section
          buildPopularSection(
            title: "Popular creator",
            buttonText: "See all",
            itemCount: 1,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
        ],
        selectedItemColor: Colors.orange,
      ),
    );
  }

  Widget buildPopularSection({required String title, required String buttonText, required int itemCount}) {
    return Container(
      padding: EdgeInsets.all(15.0),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Google Sans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  buttonText,
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
          SizedBox(height: 15),
          // Row Kedua
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                itemCount,
                (index) => buildCard(
                  'images/spaghetti_bolognese.jpg',
                  'Spaghetti Bolognese',
                  'Pasta',
                  '30-45 minutes',
                  'Medium',
                  'Miriam Belina',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(
    String imagePath,
    String title,
    String category,
    String cookTime,
    String difficulty,
    String chefName,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Color(0xFFFFFFFF),
        child: SizedBox(
          width: 200.0,
          height: 270.0,
          child: Column(
            children: [
              // Bagian Atas
              Container(
                height: 120.0,
                width: 250.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130.0,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Google Sans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          category,
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Google Sans',
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_time),
                            SizedBox(width: 5.0),
                            Text(cookTime, style: TextStyle(fontFamily: 'Google Sans')),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star),
                            SizedBox(width: 5.0),
                            Text(difficulty, style: TextStyle(fontFamily: 'Google Sans')),
                          ],
                        ),
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
                            Text(chefName, style: TextStyle(fontFamily: 'Google Sans')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
