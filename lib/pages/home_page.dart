import 'package:demo_project/class/item_class.dart';
import 'package:demo_project/widget/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: ItemClass(
              title: 'Aeroplane', 
              imagePath: 'images/aeroplane.png'
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                        title: 'Ship', imagePath: 'images/ship.png'),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                        title: 'Car', imagePath: 'images/car.png'),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: ItemClass(title: 'Bike', imagePath: 'images/bike.png'),
            ),
          ],
        ),
      ),
    );
  }
}
