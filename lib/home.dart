import 'package:bloc_test/bloc/button_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<ButtonBloc, ButtonState>(
              builder: (context, state) {
                if (state is ButtonPressedState) {
                  return const Text(
                    'Button Pressed',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                  );
                }
                return const Text(
                  'Nothing',
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<ButtonBloc>(context)
                      .add(ButtonPressedEvent());
                },
                child: const Text('Press Me'))
          ],
        ),
      ),
    );
  }
}
