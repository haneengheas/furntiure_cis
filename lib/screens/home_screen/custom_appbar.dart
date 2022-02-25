import 'package:flutter/material.dart';
import 'package:furntiure_cis/const/color.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: green,
      elevation: 0,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        Container(
          width: 45,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 7.5),
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/woman.jpeg')),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white, width: 2)),
        ),
      ],
    );
  }
}
