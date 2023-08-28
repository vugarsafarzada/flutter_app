import "package:flutter/material.dart";

void main(){
  const app = AppInterface();
  runApp(app);
}

class AppInterface extends StatelessWidget{
  const AppInterface({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Material App title',
      home: Scaffold(
        appBar: AppBar( title: const Text('Welcome back!', textDirection: TextDirection.ltr)),
        body: const Center(
          child: Text('Hello Vugar Safarzada', textDirection: TextDirection.ltr),
        ),
        backgroundColor: const Color.fromRGBO(126, 126, 126, 1),
      ),
    );;
  }
}