import 'package:flutter/material.dart';

void main() => runApp(const UILAYOUT());

class UILAYOUT extends StatelessWidget {
  const UILAYOUT({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    "A basic non responsive UI",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  "SRM KTR, Chennai, TN",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
            size: 25,
          ),
          const Text('  3'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Layout Demo",
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Layout Demo"),
          ),
          body: ListView(
            children: [
              Image.asset(
                'images/test.png',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          )),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    "This is just a very reduimentary UI application with little to no  "
    "features in it, but i would soon be adding some functionality to it.\n\n"
    "For example, would be changing the call, route  & share stateless "
    "widgets so statefull widgets. Would also do some basic changes to the UI "
    "itself, like rather than just plan boxfit i would give the image and "
    "text feild a tile look so it can pop out.",
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    softWrap: true,
  ),
);
