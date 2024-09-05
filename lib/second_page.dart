import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Bagian gambar
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/deliver.jpg'), // Ganti dengan path gambar yang sesuai
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              
              // Bagian judul
              const Text(
                'Vaccine Types Available',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              
              // Bagian deskripsi
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'There are types of vaccines available to accelerate herd immunity, so that this pandemic will quickly disappear',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              
              // Bagian tombol navigasi
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Aksi tombol Skip
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey, // Warna background tombol Skip
                    ),
                    child: const Text('Skip'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi tombol Next
                      Navigator.of(context).pushNamed('/DetailPage');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Warna background tombol Next
                    ),
                    child: const Text('Next'),
                  ),
                ],
              ),
              
              // Bagian indikator
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 10,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/');
        },
        child: const Icon(Icons.arrow_right),
      ),
    );
  }
}
