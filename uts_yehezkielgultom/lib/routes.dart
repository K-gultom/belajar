import 'package:flutter/material.dart';
import 'package:uts_yehezkielgultom/aqua_screen.dart';
import 'package:uts_yehezkielgultom/bayar.dart';
import 'package:uts_yehezkielgultom/belanja_screen.dart';
import 'package:uts_yehezkielgultom/cleo_screen.dart';
import 'package:uts_yehezkielgultom/const_belanja.dart';
import 'package:uts_yehezkielgultom/indowater_screen.dart';
import 'package:uts_yehezkielgultom/java_water.dart';
import 'package:uts_yehezkielgultom/oasis_screen.dart';
import 'package:uts_yehezkielgultom/profile.dart';
import 'package:uts_yehezkielgultom/slide_right.dart';
import 'package:uts_yehezkielgultom/home.dart';




class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch (settings.name) {
    // Main screen
      case '/':
        return MaterialPageRoute(builder: (_) => Home());

    //untuk Routes Menu
      case '/belanja':
        // return MaterialPageRoute(builder: (_) => Belanja());
        return SlideRightRoute(widget: Belanja());
      case '/Profile':
        // return MaterialPageRoute(builder: (_) => Belanja());
        return SlideRightRoute(widget: Profile());
      // case '/Bayar':
      //   // return MaterialPageRoute(builder: (_) => Belanja());
      //   return SlideRightRoute(widget: Bayar());
      case '/Bayar':
        if(args is String){
          return MaterialPageRoute(builder: (_) => Bayar(data: args ));
        }
        return _errorRoute();

    // untuk Routes Screen
      case '/Aqua':
        if(args is String){
          return MaterialPageRoute(builder: (_) => Aqua(productName: args ));
        }
        return _errorRoute();

      case '/Oasis':
        return MaterialPageRoute(builder: (_) => Oasis(productName: 'Oasis',));
    
        return _errorRoute();
      case '/Cleo':
        if(args is String){
          return MaterialPageRoute(builder: (_) => Cleo(productName: 'Cleo' ));
        }
        return _errorRoute();
      case '/Indowater':
        if(args is String){
          return MaterialPageRoute(builder: (_) => Indowater(productName: 'Indowater' ));
        }
        return _errorRoute();
      case '/Java':
        if(args is String){
          return MaterialPageRoute(builder: (_) => Java(productName: 'Java Water' ));
        }
        return _errorRoute();
        


      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Error Page")),
      );
    });
  }  
}