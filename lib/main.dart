import 'package:flutter/material.dart';
import 'quiz.dart'; // Import the quiz.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/counter': (context) => CounterPage(),
        '/quiz': (context) => Quiz(),
        '/weather': (context) => WeatherPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.lightGreen,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.lightGreen],
                ),
              ),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.google.com/url?sa=i&url=https%3A%2F%2Fm.facebook.com%2Fphoto%2F%3Ffbid%3D10158883297602043&psig=AOvVaw1X-o3Q_4b0J5zyFVCqBWm3&ust=1697459517340000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLCG6M6H-IEDFQAAAAAdAAAAABAE'), // Replace with your logo image
                  radius: 50.0,
                ),
              ),
            ),
            ListTile(
              title: Text('Counter Page'),
              onTap: () {
                Navigator.pushNamed(context, '/counter');
              },
            ),
            ListTile(
              title: Text('Quiz'),
              onTap: () {
                Navigator.pushNamed(
                    context, '/quiz'); // Navigate to the Quiz page
              },
            ),
            ListTile(
              title: Text('Weather'),
              onTap: () {
                Navigator.pushNamed(context, '/weather');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/counter');
              },
              child: Text('Go to Counter Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Page'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'This is the Counter Page',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Page'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Text(
          'This is the Weather Page',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
