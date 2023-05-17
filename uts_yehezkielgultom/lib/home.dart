import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Text('Mineral Nesia'), 
            SizedBox(width: 8),
            Icon(Icons.water),
          ],
        ),
      ),
      
      body: Content(),

      bottomNavigationBar: NavBar(),
    );
  }
}


class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
  children: [
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('../assets/images/background.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Positioned(
      top: 20,
      left: 16,
      right: 16,
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6.0,
              spreadRadius: 4.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mau Minum Air ??',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Beli dengan Mineral Nesia Aja !!!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    ),
  ],
);

    
  }
}

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: Color(0xFF9E9E9E),
                    ),
                    Text(
                      'Home',
                      style: TextStyle(fontSize: 12.00),
                    )
                  ],
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/belanja');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.shopping_basket,
                      color: Color(0xFF9E9E9E),
                    ),
                    Text(
                      'Belanja',
                      style: TextStyle(fontSize: 12.00),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/Profile');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      color: Color(0xFF9E9E9E),
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(fontSize: 12.00),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
