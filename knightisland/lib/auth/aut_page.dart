import 'package:flutter/material.dart';
import 'package:knightisland/system_pages/login_page.dart';

import '../system_pages/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}


class _AuthPageState extends State<AuthPage> {
  //intially, show the login page
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(showRgisterPage: toggleScreens ,);
    } else{
      return RegisterPage(showLoginPage: toggleScreens ,);
    }
    
  }
}