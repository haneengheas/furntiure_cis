import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furntiure_cis/const/color.dart';
import 'package:furntiure_cis/screens/details/view.dart';
import 'package:furntiure_cis/screens/home_screen/category.dart';
import 'package:furntiure_cis/screens/home_screen/custom_appbar.dart';
import 'package:furntiure_cis/screens/home_screen/explore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size.fromHeight(55),
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // explore list
            const Explore(),
            const SizedBox(
              height: 20,
            ),
            const Category(),
            GridView.builder(
                 physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5,
                    crossAxisSpacing: 15,
                    crossAxisCount: 2),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    image: items[index]['image'],
                                    name: items[index]['type'],
                                    price: items[index]['price'],
                                    rate: items[index]['rate'],
                                  )));
                    },
                    child: Container(
                      height: 200,
                      width: sizeFromWidth(context, 2),
                      //color: green,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 5,
                            child: Container(
                              height: 150,
                              width: 160,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                  color: babyBlue,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    items[index]['type'],
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: green),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('\$ ' + items[index]['price'],
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: green)),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: green,
                                            size: 15,
                                          ),
                                          Text(items[index]['rate'],
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: green)),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 15,
                            child: Container(
                              alignment: Alignment.center,
                              height: 20,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: green,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                'New',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 140,
                              width: sizeFromWidth(context, 3),
                              decoration: BoxDecoration(
                                //color: Colors.red,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/' + items[index]['image'],
                                      ),
                                      fit: BoxFit.fitHeight),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

List chair = [
  '3.jpg',
  '2.jpg',
  '4.jpg',
  '2dnd.png',
];

List<Map<String, dynamic>> category = [
  {
    'name': 'Chairs',
    'is_selected': false,
  },
  {
    'name': 'sofa',
    'is_selected': false,
  },
  {
    'name': 'tables',
    'is_selected': false,
  },
];

List<Map<String, dynamic>> items = [
  {'type': 'brown chair', 'price': '65', 'rate': '3.5', 'image': 'Item_1.png'},
  {'type': 'green chair', 'price': '100', 'rate': '4.5', 'image': 'Item_2.png'},
  {'type': 'green chair', 'price': '30', 'rate': '2.5', 'image': '140.png'},
  {'type': 'brown chair', 'price': '65', 'rate': '3.5', 'image': 'Item_1.png'},
];
