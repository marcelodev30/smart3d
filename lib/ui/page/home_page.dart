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
     // backgroundColor: const Color.fromARGB(255, 27, 51, 100),
     // backgroundColor: const Color(0xFF14181B),
      backgroundColor: Color.fromARGB(255, 241, 244, 248),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('My App'),
        actions: [Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
              CircleAvatar(backgroundColor: Colors.blueAccent,),
            ],
          ),
        )],
        ),
        drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
             Row(
               children: [
                 Text('My Filamentos',style: TextStyle(color: Colors.black,fontSize: 13),),
               ],
             ),
            SizedBox(height: 8),
            Row(
              children: [
                NewWidget(),
              ],
            ),SizedBox(height: 10),
            Row(
               children: [
                 Text('My Projects',style: TextStyle(color: Colors.black,fontSize: 13),),
               ],
             ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 5,
      color: Colors.white,
      child: SizedBox(
        width: 80,
        height: 97,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 3),
            Stack(
              alignment: Alignment.center,
              children: [
               SizedBox(
                width: 61,
                height: 61,
                child: CircularProgressIndicator(value: 0.4,backgroundColor: Colors.black,valueColor: AlwaysStoppedAnimation<Color>(Colors.green),strokeWidth: 8.5,)),
                CircleAvatar(radius: 30,backgroundImage: NetworkImage('https://3dprime.com.br/wp-content/uploads/branco_1.jpg'),),
              ],
            ),
            Text('400g',style: TextStyle(color: Colors.black),),
          ],
        ),
      ),
    );
  }
}
