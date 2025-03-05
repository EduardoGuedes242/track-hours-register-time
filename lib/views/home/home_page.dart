import 'package:flutter/material.dart';
import 'package:register_time/widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ButtonProprio(title: 'Registrar marcação', onClick: () {}),
      ),
    );
  }
}
