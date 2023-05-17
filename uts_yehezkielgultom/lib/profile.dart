import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('../assets/images/kiel.jpg'),
              ),
              SizedBox(height: 24),
              Text(
                'Yehezkiel Gultom',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'kiel123@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16),
              Divider(),
              SizedBox(height: 16),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Akun'),
                    subtitle: Text('Yehezkiel Gultom'),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email'),
                    subtitle: Text('kiel123@gmail.com'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Telepon'),
                    subtitle: Text('082179480009'),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Alamat'),
                    subtitle: Text('Jl. Sukabangun 2'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              
            ],
          ),
        ),
      ),
    );
  }
}