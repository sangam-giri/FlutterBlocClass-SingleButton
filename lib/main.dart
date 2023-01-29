import 'package:bloc_test/bloc/button_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Button Test',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: BlocProvider(
        create: (context) => ButtonBloc(),
        child: Home(),
      ),
    );
  }
}
