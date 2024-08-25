import 'package:flutter/material.dart';
import 'package:luid/module/example/animations/moives/sliding_container.dart';

class MoviesView extends StatefulWidget {
  const MoviesView({super.key});

  @override
  State<MoviesView> createState() => _MoviesViewState();
}

class _MoviesViewState extends State<MoviesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Column(
        children: [
          Align(
            child: Text(
              '正在热播',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            alignment: Alignment.topLeft,
          ),
          SlidingContainer()
        ],
      ),
    );
  }
}
