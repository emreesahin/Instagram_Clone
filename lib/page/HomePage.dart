import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/Instagram_logo.png',
          height: 95,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          //STORY
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(),
          )
        ]),
      ),
    );
  }
}
