import 'package:flutter/material.dart';
import 'package:flutter_block_practice/widgets/food_list.dart';

class FoodListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FoodList Screen"),
      ),
      body: FoodList(),
    );
  }
}
