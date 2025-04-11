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
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(radius: 30, backgroundColor: Colors.blue),
                    Text('40%'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
