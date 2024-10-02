import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Safety App'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // Bagian atas
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Halo,\nSelamat Datang.',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Everything looks normal. Have a great day!',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),

          // Carousel Safety Guide
          SizedBox(
            height: 200,
            child: PageView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/placeholder_image.png',
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Safety Guide ${index + 1}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Learn more'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Bagian bawah
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Latest Updates',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Tambahkan widget untuk menampilkan update terbaru
                  // Contoh:
                  // ListTile(
                  //   title: Text('Update 1'),
                  //   subtitle: Text('Deskripsi update 1'),
                  // ),
                  // ListTile(
                  //   title: Text('Update 2'),
                  //   subtitle: Text('Deskripsi update 2'),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Laporan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Darurat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Detail',
          ),
        ],
      ),
    );
  }
}