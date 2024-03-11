import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container( 
          width: 200,
          height: 200,
          child: Icon(Icons.android, size: 60, color: Colors.grey[800],),
          decoration: BoxDecoration( 
            color: Colors.grey[300],
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow( 
                color: Colors.grey.shade600,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0
              ),

                BoxShadow( 
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0
              ),

              
            ],

            gradient: LinearGradient(
              begin: Alignment.topLeft, 
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade200,
                Colors.grey.shade300,
                Colors.grey.shade400,
                Colors.grey.shade500,

              ],

              stops: [
                0.1,
                0.3,
                0.8,
                0.9
              ]
            )

            
          ),
        ),
      ),
    );
  }
}