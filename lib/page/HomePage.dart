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

  List<String> postImages = [
    "assets/images/postphoto1.jpg",
    "assets/images/postphoto2.jpg",
    "assets/images/postphoto3.jpg",
    "assets/images/postphoto4.jpg",
    "assets/images/postphoto5.jpg",
    "assets/images/postphoto6.jpg",
    "assets/images/postphoto7.jpg",
    "assets/images/postphoto8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    int currentState;
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
          const Divider(),
          Column(
              children: List.generate(
                  8,
                  (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //HEADER POST
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundImage: const AssetImage(
                                    "assets/images/story.jpg",
                                  ),
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundImage: AssetImage(
                                      profileImages[index],
                                    ),
                                  ),
                                ),
                              ),
                              const Text("Profile Name"),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_vert))
                            ],
                          ),
                          //IMAGE POST
                          SizedBox(
                            height: 284,
                            child: Image.asset(
                              postImages[index],
                            ),
                          ),
                          //FOOTER POST
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.favorite_border)),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.chat_bubble_outline)),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.label_outline)),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.bookmark_outline)),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    text: const TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(text: "Liked by"),
                                    TextSpan(
                                        text: " Profile Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: " and"),
                                    TextSpan(
                                        text: " others",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )),
                                RichText(
                                    text: const TextSpan(
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: " Profile Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: " Lorem ipsum dolor sit amet."),
                                  ],
                                )),
                                const Text(
                                  "View all 12 comments",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          const Divider(),
                        ],
                      ))),
        ]),
      ),
    );
  }
}
