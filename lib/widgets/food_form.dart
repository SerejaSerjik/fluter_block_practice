import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_practice/bloc/food_bloc.dart';
import 'package:flutter_block_practice/events/food_event.dart';
import 'package:flutter_block_practice/models/food.dart';
import 'package:flutter_block_practice/screens/food_list_screen.dart';
import 'package:flutter_block_practice/widgets/food_list.dart';

class FoodForm extends StatefulWidget {
  @override
  _FoodFormState createState() => _FoodFormState();
}

class _FoodFormState extends State<FoodForm> {
  String _foodname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food App with BloC"),
      ),
      body: Container(
        padding: EdgeInsets.all(36),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Food Form',
                style: TextStyle(fontSize: 42),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Food"),
                style: TextStyle(fontSize: 22),
                onChanged: (text) {
                  setState(() {
                    _foodname = text;
                  });
                },
              ),
              FoodList(),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'button1',
            child: Icon(Icons.save),
            onPressed: () => BlocProvider.of<FoodBloc>(context).add(
              FoodEvent.add(
                Food(name: _foodname),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          FloatingActionButton(
            heroTag: 'button2',
            child: Icon(Icons.navigate_next),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FoodListScreen())),
          )
        ],
      ),
    );
  }
}
