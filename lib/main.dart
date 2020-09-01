import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_block_practice/bloc/food_bloc.dart';
import 'package:flutter_block_practice/bloc/food_bloc_delegate.dart';
import 'package:flutter_block_practice/widgets/food_form.dart';

void main() {
  BlocSupervisor.delegate = FoodBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FoodBloc>(
      create: (context) => FoodBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: FoodForm(),
      ),
    );
  }
}
