import 'package:flutter/material.dart';
import 'package:hello/assets/colors.dart';

void main(){
  final app;
  app = HelloApp(darkThemeActive: true);
  runApp(app);
}

class HelloApp extends StatelessWidget{
  final bool darkThemeActive;
  const HelloApp({Key? key, required this.darkThemeActive}) : super(key: key);
  @override
  Widget build(BuildContext context){
    if(!darkThemeActive){
      return MaterialApp(
        title: 'MaterialApp for Hello',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome back!', textDirection: TextDirection.ltr),
            backgroundColor: specific_colors['black'],
          ),
          body: const Center(
            child: Text(
              'Welcome back \nVugar!',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  textBaseline: TextBaseline.alphabetic
              ),
              textAlign: TextAlign.center,
            ),

          ),
        ),
      );
    }
    return MaterialApp(
      title: 'MaterialApp for Hello',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome back!', textDirection: TextDirection.ltr),
          backgroundColor: specific_colors['black'],
        ),
        body: const Center(
          child: Text(
            'Welcome back \nVugar!',
            textDirection: TextDirection.ltr,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                textBaseline: TextBaseline.alphabetic
            ),
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: specific_colors['dark'],
      ),
    );
  }
}