import 'package:flutter/material.dart';
import '../../../basic_widget/AppBars.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Appbars(title: "登录",),
      body: Center(child: Text('login'),),
    );
  }
}
