import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage1> {
  List<String> profileImages = [
    'assets/images/photo1.jpg',
    'assets/images/photo2.jpg',
    'assets/images/photo3.jpg',
    'assets/images/photo4.jpg',
    'assets/images/photo5.jpg',
    'assets/images/photo6.jpg',
    'assets/images/photo7.jpg',
    'assets/images/photo8.jpg',
  ];
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
            child: Row(
              children: List.generate(
                  8,
                  (index) => Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  const AssetImage('assets/images/story.jpg'),
                              child: CircleAvatar(
                                radius: 33,
                                backgroundImage: AssetImage(
                                  profileImages[index],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Profile Name",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black87,
                              ),
                            )
                          ],
                        ),
                      )),
            ),
          ),
          const Divider()
        ]),
      ),
    );
  }
}
