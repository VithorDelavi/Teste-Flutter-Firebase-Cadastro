import 'package:firebase_teste/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 100),
        child: OutlinedButton(
          onPressed: () => context.read<AuthService>().logout(),
          style: OutlinedButton.styleFrom(primary: Colors.red),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Sair do app',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
