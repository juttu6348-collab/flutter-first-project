import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ROOT STATELESS WIDGET
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets Demo',
      home: HomeScreen(),
    );
  }
}

// STATEFUL WIDGET
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int counter = 0;

  // Increment Counter
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  // Reset Counter
  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Flutter Interactive UI"),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // HEADING
              Text(
                "Stateless & Stateful Widgets Demo",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              // NORMAL TEXT
              Text(
                "This application demonstrates Flutter widgets and state management.",
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(height: 20),

              // ROW OF ICONS
              Text(
                "Icons Row",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.phone, size: 35, color: Colors.green),
                  SizedBox(width: 20),
                  Icon(Icons.email, size: 35, color: Colors.red),
                  SizedBox(width: 20),
                  Icon(Icons.person, size: 35, color: Colors.blue),
                ],
              ),

              SizedBox(height: 30),

              // IMAGE ASSET
              Text(
                "Asset Image",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Center(
                child: Image.asset(
                  'assets/profile.png',
                  height: 200,
                  width: 200,
                ),
              ),

              SizedBox(height: 30),

              // CONTAINER
              Text(
                "Container Widget",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Container(
                height: 120,
                width: 250,
                color: Colors.orange,
                alignment: Alignment.center,

                child: Text(
                  "This is a Container",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),

              SizedBox(height: 30),

              // STACK
              Text(
                "Stack Widget",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Stack(
                alignment: Alignment.centerLeft,

                children: [

                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.red,
                  ),

                  Container(
                    height: 110,
                    width: 110,
                    color: Colors.green,
                  ),

                  Container(
                    height: 70,
                    width: 70,
                    color: Colors.blue,
                  ),
                ],
              ),

              SizedBox(height: 40),

              // COUNTER SECTION
              Text(
                "Counter Section",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 15),

              Text(
                "Counter Value: $counter",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                ),
              ),

              SizedBox(height: 20),

              Row(
                children: [

                  ElevatedButton(
                    onPressed: incrementCounter,
                    child: Text("Increment"),
                  ),

                  SizedBox(width: 20),

                  ElevatedButton(
                    onPressed: resetCounter,
                    child: Text("Reset"),
                  ),
                ],
              ),

              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}