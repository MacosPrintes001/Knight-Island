import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const  Text("Coé Arrombado"),),
       backgroundColor: const Color.fromARGB(75, 0, 191, 165),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const[
            Text("TRABALHANDO NESTA TELA",
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );

  }
}