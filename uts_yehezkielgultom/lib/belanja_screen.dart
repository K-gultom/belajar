import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uts_yehezkielgultom/aqua_screen.dart';
import 'package:uts_yehezkielgultom/const_belanja.dart';
import 'package:uts_yehezkielgultom/home.dart';

class Belanja extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Oasis Water',
      'image': '../assets/images/oasis.jpeg',
      'price': 'Rp 8.500',
    },
    {
      'name': 'Cleo',
      'image': '../assets/images/cleo.jpg',
      'price': 'Rp 6.500',
    },
    {
      'name': 'Aqua',
      'image': '../assets/images/aqua.jpg',
      'price': 'Rp 10.000',
    },
    {
      'name': 'Indowater',
      'image': '../assets/images/indowater.jpg',
      'price': 'Rp 5.500',
    },
    {
      'name': 'Java Water',
      'image': '../assets/images/java.png',
      'price': 'Rp 5.500',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Belanja'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return GestureDetector(
            onTap: () {
              // Aksi yang dijalankan ketika card ditekan
              if (product['name'] == 'Oasis Water') {
                Navigator.pushNamed(context, '/Oasis',
                    arguments: product['price']);
                print('Oasis Water');
              } else if (product['name'] == 'Cleo') {
                Navigator.pushNamed(context, '/Cleo',
                    arguments: product['price']);
                print('Cleo');
              } else if (product['name'] == 'Aqua') {
                Navigator.pushNamed(context, '/Aqua',
                    arguments: product['price']);
                print('Aqua');
              } else if (product['name'] == 'Indowater') {
                Navigator.pushNamed(context, '/Indowater',
                    arguments: product['price']);
                print('Indowater');
              } else if (product['name'] == 'Java Water') {
                Navigator.pushNamed(context, '/Java',
                    arguments: product['price']);
                print('Java Water');
              }
            },
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: double.infinity,
                      height: 500.0,
                      child: FractionallySizedBox(
                        widthFactor: 0.5, // Mengurangi lebar gambar menjadi 80% dari lebar parent
                        heightFactor: 0.5, // Mengurangi tinggi gambar menjadi 80% dari tinggi parent
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(product['image']),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),

                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product['name'],
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          product['price'],
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
