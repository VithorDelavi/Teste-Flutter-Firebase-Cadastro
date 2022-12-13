import 'package:firebase_teste/home_page.dart';
import 'package:firebase_teste/services/auth_service.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../login_page.dart';


class AuthCheck extends StatefulWidget {
  const AuthCheck({super.key});

  @override
  State<AuthCheck> createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {

    AuthService auth = Provider.of<AuthService>(context);
    
    if(auth.isLoading)
      return loading();
    else if(auth.usuario ==null)
      return LoginPage();
    else 
      return HomePage();
}

loading(){
  return Scaffold(
    body: Center(
      child: CircularProgressIndicator(),
    ),
  );
}
}