import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(28),
              color: Color.fromARGB(255, 14, 137, 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/icon.jpeg'),
                    radius: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat Datang',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        'Admin',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(width: 120),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Icon(Icons.exit_to_app, color: Colors.white)],
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
