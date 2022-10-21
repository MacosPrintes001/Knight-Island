import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../auth/main_page.dart';



class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super (key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4)).then((value){
      Navigator.of(context).pushReplacement(
        CupertinoPageRoute(builder: (ctx) =>  const MainPage()));
    });
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(75, 0, 191, 165),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:const[
            Image(
              image: AssetImage("assets/KS_logo.png"),
              width: 300,
            ),
            SizedBox(
              height: 30,
            ),
            SpinKitWave(
              color: Color.fromARGB(75, 0, 191, 166),
            ),
          ],
        ),
      ),
    );
  }
}