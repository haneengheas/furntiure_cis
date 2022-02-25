import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furntiure_cis/const/color.dart';

class DetailsScreen extends StatefulWidget {
  String? name, price, rate, image;

  DetailsScreen(
      {required this.name,
      required this.image,
      required this.price,
      required this.rate,
      Key? key})
      : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: green,
            )),
        title: Text(
          widget.name!,
          style: const TextStyle(
              color: green, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag,
                color: green,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: sizeFromHeight(context, 3.2),
                width: sizeFromWidth(context, 1.2),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/' + widget.image!),
                      fit: BoxFit.fitHeight),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.name!,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.price! + '\$',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Text(
                'this text can be changed this text can be changed this text can be changed this text can be changed this text can be changed this text can be changed this text can be changed this text can be changed this text can be changed this text can be changed this text can be changed',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  const Text(
                    'color',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                      height: 50,
                      width: sizeFromWidth(context, 1.3),
                      child: ListView.builder(
                          itemCount: colors.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              height: 25,
                              width: 20,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 7.5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colors[index]['color'],
                                  border: Border.all(
                                      color: Colors.white, width: 1.5),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 2,
                                        offset: Offset(0, 1.5))
                                  ]),
                            );
                          }))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  const Text(
                    'Quantity',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(
                    height: 35,
                    width: 110,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: babyBlue,
                        borderRadius: BorderRadius.circular(35)),
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                quantity = quantity + 1;
                              });
                              print(quantity);
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: const BoxDecoration(
                                  color: green, shape: BoxShape.circle
                                  // borderRadius: BorderRadius.circular(35)
                                  ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            height: 30,
                            width: 30,
                            child: Center(
                              child: Text(
                                ' $quantity',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            )),
                        InkWell(
                          onTap: () {
                            setState(() {
                              quantity--;
                            });
                            print(quantity);
                          },
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 30,
                              width: 30,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: const BoxDecoration(
                                  color: green, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: sizeFromWidth(context, 1.8),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Text(
                'add to cart',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              height: 50,
              width: sizeFromWidth(context, 1.8),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Text(
                'Buy Now',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> colors = [
  {'color': green},
  {'color': Colors.blue},
  {'color': Colors.yellow},
  {'color': Colors.black},
  {'color': Colors.grey},
];
