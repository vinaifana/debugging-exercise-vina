import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Debug Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: const Text('Home Page'),
      ),
      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to the Debug Challenge!'),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                
              },
              child: const Text('Press Me'),
            ),
            Image.network( 
              'https://incorrect_url.png',
              height: 100,
              width: 100,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.add, size: 50),
                  Text('Add Icon'), 
                  Icon(Icons.remove, size: 50),
                  Text('Remove Icon')
                ]
              )
            ),
          ],
        ),
      ),
    );
  }
}
