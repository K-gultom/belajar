import 'package:flutter/material.dart';

class Bayar extends StatelessWidget {
 final String data;

  const Bayar({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pembayaran'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Produk yang Dipesan:',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                

              ],
            ),
            
            SizedBox(height: 16.0),
            SizedBox(height: 32.0),
            Text(
              'Total Pembayaran:',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              data,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}