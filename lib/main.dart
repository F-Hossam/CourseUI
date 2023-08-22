import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
        ),
      ),
    ),
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF29274F),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: SafeArea(
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Online',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Master Class',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 360,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      courseCard(
                        'assets/images/course1.png',
                        const Color(0xFF625CB6),
                        'MACHINE LEARNING',
                        'Recomended',
                      ),
                      courseCard(
                        'assets/images/course2.png',
                        const Color(0xFFD9715D),
                        'GRAPHIC DESIGN',
                        'Top Rated',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Free online class',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'From over 80 Lectures',
                  style: TextStyle(
                    color: Color(0xFFC7C6D1),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                classCard('assets/images/free1.jpg', 8, 'Flutter Developer'),
                classCard('assets/images/free2.jpg', 6, 'Data Science'),
                classCard('assets/images/free3.jpg', 7, 'Python Developer'),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

Widget courseCard(String image, Color color, String text1, String text2) {
  return AspectRatio(
    aspectRatio: 2.5 / 3.3,
    child: Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(.3),
                )
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(text2),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            text1,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const Text(
            'BEGINNER',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget classCard(String image, int hour, String name) {
  return Container(
    height: 100,
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    margin: const EdgeInsets.only(bottom: 20, right: 20),
    decoration: BoxDecoration(
      color: const Color(0xFF3E3A6D),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                '$hour Hours',
                style: const TextStyle(
                  color: Color(0xFFC7C6D1),
                ),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xFFF4C465),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFFF4C465),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFFF4C465),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFFF4C465),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFFF4C465),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Icon(
          Icons.play_circle_fill_rounded,
          color: Color(0xFFEB53A2),
          size: 30,
        ),
      ],
    ),
  );
}
