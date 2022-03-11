import 'package:flutter/material.dart';
import 'package:furntiure_cis/const/color.dart';
class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeFromHeight(context, 2.1),
      child: Stack(
        children: [
          Container(
            width: sizeFromWidth(context, 1),
            height: sizeFromHeight(context, 2.9),
            padding: const EdgeInsets.symmetric(
                horizontal: 15, vertical: 20),
            decoration: const BoxDecoration(
                color: green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: const Text(
              'Explore',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 210,
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: chair.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      height: 200,
                      margin:
                      const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                              AssetImage('assets/' + chair[index]),
                              fit: BoxFit.fitHeight),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                    );
                  }),
            ),
          ),
        ],
      ),
    )
    ;
  }
}
List chair = [
  '3.jpg',
  '2.jpg',
  '4.jpg',
  '2dnd.png',
];