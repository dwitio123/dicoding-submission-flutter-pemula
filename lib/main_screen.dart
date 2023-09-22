import 'package:aneka_makanan_indonesia/about_screen.dart';
import 'package:aneka_makanan_indonesia/detail_screen.dart';
import 'package:aneka_makanan_indonesia/model/food.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  void handleClick(String value, BuildContext context) {
    switch (value) {
      case 'About':
        Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutScreen()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aneka Makanan Indonesia'),
        actions: [
          PopupMenuButton(
              onSelected: (value) => handleClick(value, context),
              itemBuilder: (BuildContext context) {
                return {'About'}.map((String choice) {
                  return PopupMenuItem(value: choice, child: Text(choice));
                }).toList();
              })
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Food food = foodList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(
                  food: food,
                );
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: Image.asset(
                        food.photo,
                        height: 120,
                        fit: BoxFit.cover,
                      )),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(food.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 14,
                          ),
                          Text(
                            food.description,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: foodList.length,
      ),
    );
  }
}
