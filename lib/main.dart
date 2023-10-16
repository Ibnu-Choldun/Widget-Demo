import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WidgetDemo(),
    );
  }
}

class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WidgetDemo'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            color: Colors.blue,
            child: Center(
              child: Text('Ini adalah contoh penggunaan Container',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),

          ),
          ElevatedButton(
            onPressed: () {
              print('===Tombol Ditekan.');
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text('Tombol Elevated'),

            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber,
              ),
              Text('Rating: 4.5'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.network('https://picsum.photos/id/7/300/200',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
