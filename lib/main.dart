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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.person),
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: const [
              SizedBox(
                height: 24,
              ),
              Center(
                child: CircleAvatar(
                  radius: 72,
                    backgroundImage: AssetImage("assets/images/WhatsApp Image 2023-04-24 at 10.39.19.jpg"),

                ),
              ),
              SizedBox(
                height: 16,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Name",
                  textScaleFactor: 0.95,
                ),
                subtitle: Text(
                  "Irin Roche",
                  textScaleFactor: 1.1,
                ),
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text(
                  "City",
                  textScaleFactor: 0.95,
                ),
                subtitle: Text(
                  "Mumbai",
                  textScaleFactor: 1.1,
                ),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(
                  "Phone",
                  textScaleFactor: 0.95,
                ),
                subtitle: Text(
                  "7506931269",
                  textScaleFactor: 1.1,
                ),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text(
                  "Email",
                  textScaleFactor: 0.95,
                ),
                subtitle: Text(
                  "dnyaneshwarpatil2048@gmail.com",
                  textScaleFactor: 1.1,
                ),
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
