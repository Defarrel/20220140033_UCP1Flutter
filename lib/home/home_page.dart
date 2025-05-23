import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 102, 185, 51),
        toolbarHeight: 70,
        title: Row(
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
                  widget.username,
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(width: 120),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  icon: Icon(Icons.exit_to_app, color: Colors.white, size: 30),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/banner.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 16, right: 8),
                        height: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 102, 185, 51),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  '/piket',
                                  arguments: widget.username,
                                );
                              },
                              icon: Icon(Icons.groups_2),
                              color: Colors.white,
                              iconSize: 40,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Data Piket',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 180,
                        margin: EdgeInsets.only(left: 8, right: 16),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 102, 185, 51),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/pelanggan');
                              },
                              icon: Icon(
                                Icons.person_add_alt_1,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Data Pelanggan',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16, top: 8),
                  height: 240,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 102, 185, 51),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/barang');
                        },
                        icon: Icon(
                          Icons.inventory_2,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Barang Masuk/Keluar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
