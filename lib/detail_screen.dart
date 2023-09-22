import 'package:flutter/material.dart';
import 'model/food.dart';

class DetailScreen extends StatelessWidget {
  final Food food;

  const DetailScreen({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(food.photo),
            const SizedBox(height: 14,),
            Text(
                food.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                ),
            ),
            const SizedBox(height: 14,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(food.description,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 14,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('Bahan-bahan:', style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),),
            ),
            const SizedBox(height: 14,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(food.ingredient),
            ),
            const SizedBox(height: 14,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('Cara membuat:', style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),),
            ),
            const SizedBox(height: 14,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(food.procedure, textAlign: TextAlign.justify,),
            )
          ],
        ),
      ),
    );
  }
}
