import 'package:flutter/material.dart';
import 'package:instagram_clone/page/HomePage.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        appBarTheme: const AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage1(),
      bottomNavigationBar: BottomAppBar(
        child: Row(children: [
          const Spacer(),
          IconButton(
            icon: currentpage == 0
                ? const Icon(Icons.home)
                : const Icon(Icons.home_outlined),
            onPressed: () {
              setState(() {
                currentpage = 0;
              });
            },
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.ondemand_video),
            onPressed: () {},
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.card_travel),
            onPressed: () {},
          ),
          const Spacer(),
          IconButton(
            icon: currentpage == 1
                ? const Icon(Icons.person)
                : const Icon(Icons.person_outlined),
            onPressed: () {
              setState(() {
                currentpage = 1;
              });
            },
          ),
          const Spacer(),
        ]),
      ),
    );
  }
}
