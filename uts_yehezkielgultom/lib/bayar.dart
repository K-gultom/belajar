import 'package:flutter/material.dart';
import 'package:uts_yehezkielgultom/const_belanja.dart';

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
                  
                ),
                Text('Oasis Water',
                style: TextStyle(
                    fontSize: 18.0,
                fontWeight: FontWeight.bold,
                  ),
                )

              ],
            ),
            
            SizedBox(height: 16.0),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                    Text(
                  'Total Pembayaran:',
                  style: TextStyle(
                    fontSize: .0,
                  ),
                ),
                Text('######')
              ],
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