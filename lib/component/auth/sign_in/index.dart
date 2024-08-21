import 'package:flutter/material.dart';

import '../../basic/AppBars.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(title: "登录").build(),
      body: const Center(child: Text('login'),),
    );
  }
}
