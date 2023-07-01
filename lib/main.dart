import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';
import 'package:torch_light/torch_light.dart';

void main() {
  TorchController().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Torch Light',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TorchLight(),
    );
  }
}
