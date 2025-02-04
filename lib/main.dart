import 'package:basketball_app/cubit/counter_cubit.dart';
import 'package:basketball_app/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BasketballApp());
}

class BasketballApp extends StatelessWidget {
  const BasketballApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
