import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text('About'),),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
                backgroundImage: AssetImage('images/tgs.jpeg'),),
            SizedBox(height: 14,),
            Text('Dwitio Ahmad Pranoto', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
            SizedBox(height: 2,),
            Text('tiothebook@gmail.com', style: TextStyle(
              color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}
