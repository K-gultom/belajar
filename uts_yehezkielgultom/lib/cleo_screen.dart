import 'package:flutter/material.dart';
import 'package:uts_yehezkielgultom/const_belanja.dart';

class Cleo extends StatefulWidget {
  final String productName;

  Cleo({
    required this.productName,
  });

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<Cleo> {
  int quantity = 1;
  double price = 6500.0; // Harga per produk

  @override
  void initState() {
    super.initState(); // Menggunakan nilai quantity dari argument
  }

  double calculateSubtotal() {
    return price * quantity;
  }

  double calculateTotal() {
    double subtotal = calculateSubtotal();
    double tax = 1000.0; // Pajak
    return subtotal + tax;
  }

  void increaseQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productName),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Pembayaran',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nama Produk',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  widget.productName,
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jumlah Pesanan',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          decreaseQuantity();
                        });
                      },
                    ),
                    Text(quantity.toString()),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          increaseQuantity();
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  calculateSubtotal().toString(),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pajak',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '1.000',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1.0,
              color: Colors.grey,
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  calculateTotal().toString(),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Aksi yang dijalankan ketika tombol bayar ditekan
                Navigator.pushNamed(context, '/Bayar', arguments: 'Cleo');
              },
              child: Text('Bayar'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                minimumSize: Size(double.infinity, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
