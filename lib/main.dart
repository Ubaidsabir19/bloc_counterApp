import 'package:flutter/material.dart';
import 'UI/counter_page.dart';
import 'bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(
      BlocProvider(
          create: (_) => CounterBloc(),
          child:  const MyApp(),
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CounterPage(),
    );
  }
}

