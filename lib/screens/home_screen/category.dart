import 'package:flutter/material.dart';
import 'package:furntiure_cis/const/color.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                for (int i = 0; i < category.length; i++) {
                  if (category[i]['is_selected'] == true) {
                    setState(() {
                      category[i]['is_selected'] = false;
                    });
                  }
                }
                setState(() {
                  category[index]['is_selected'] = true;
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                margin:
                    const EdgeInsets.symmetric(horizontal: 12.5, vertical: 10),
                width: 110,
                decoration: BoxDecoration(
                    color:
                        category[index]['is_selected'] ? green : Colors.white,
                    border: Border.all(color: green),
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  category[index]['name'],
                  style: TextStyle(
                      color:
                          category[index]['is_selected'] ? Colors.white : green,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
            );
          }),
    );
  }
}

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
