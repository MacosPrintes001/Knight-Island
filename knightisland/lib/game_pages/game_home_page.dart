import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:knightisland/game_pages/game_page.dart';

class GameHomePage extends StatefulWidget {
  const GameHomePage({Key? key}) : super(key: key);

  @override
  State<GameHomePage> createState() => _GameHomePageState();
}

class _GameHomePageState extends State<GameHomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueGrey,
        title: const Center(child: Text("Wellcome")),
      ),

      //menu appbar
      // drawer: Drawer(
      //   backgroundColor: Colors.white,
      //   child: Column(
      //     children: [
      //       const DrawerHeader(child: Icon(Icons.home_filled)),
      //       ListTile(
      //         leading: const Icon(Icons.logout_outlined),
      //         title: const Text("Sign Out"),
      //         onTap: () {FirebaseAuth.instance.signOut();},
      //       ),
      //     ],
      //   ),
      // ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const GamePage();
              }));
            },
            color: Colors.greenAccent,
            child: const Text("Play"),
          ),

          MaterialButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            color: Colors.greenAccent,
            child: const Text("Sign out"),
          ),
        ]),
      ),
    );
  }
}
