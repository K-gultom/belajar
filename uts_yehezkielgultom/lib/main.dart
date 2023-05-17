import 'package:flutter/material.dart';
import 'package:uts_yehezkielgultom/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //ini untuk menampilkan routes dengan file routes
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
