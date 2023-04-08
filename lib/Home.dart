import 'dart:math';

import 'package:flutter/material.dart';
import 'package:paypersa/Cart_Screen.dart';
import 'package:paypersa/data.dart';

import 'Widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTap = false;

  List<String> title = [
    'Test Product',
    'Cheesy Fries Sp',
    'Cheesy Fries Ro',
    'test choice',
    'Test Size',
    'Pizza Margherit'
  ];
  List<String> subTitle = [
    '\$ 0.00',
    '\$ 1.00',
    '\$ 1.00',
    '\$ 20.00',
    '\$ 0.00',
    '\$ 0.00'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              padding: const EdgeInsets.only(right: 20),
              icon: const Icon(Icons.notifications_active_outlined))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Row(
              children: [
                customContainer(
                  text: 'Dine In',
                  onTap: () {},
                  containerColor: ConstColors.containerColor,
                ),
                SizedBox(width: 8),
                customContainer(
                  text: 'Pickup',
                  onTap: () {},
                  containerColor: ConstColors.containerColor,
                ),
                SizedBox(width: 8),
                customContainer(
                    text: 'Delivery',
                    onTap: () {},
                    containerColor: Colors.black,
                    textColor: Colors.white),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      customCard(
                          title: 'Hel',
                          color: Colors.orangeAccent.withOpacity(0.8),
                          subTitle: 'Hello World 1'),
                      customCard(
                          title: 'Bur',
                          color: Colors.orangeAccent.withOpacity(0.8),
                          subTitle: 'Burger'),
                      customCard(
                          title: 'Dri',
                          color: Colors.orangeAccent.withOpacity(0.8),
                          subTitle: 'Drinks')
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      customCard(
                          title: 'Ang',
                          color: Colors.orangeAccent.withOpacity(0.8),
                          subTitle: 'Angebot'),
                      customCard(
                          title: 'Tes',
                          color: Colors.orangeAccent.withOpacity(0.8),
                          subTitle: 'Test Bundle'),
                      customCard(
                          title: 'Men',
                          color: Colors.orangeAccent.withOpacity(0.8),
                          subTitle: 'Menu Test BBM')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Container(
              height: 230,
              child: GridView.builder(
                  itemCount: title.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 180,
                      childAspectRatio: 2.7,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5),
                  itemBuilder: (_, i) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ConstColors.cardColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 14),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title[i],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              subTitle[i],
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Divider(thickness: 2),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              isDismissible: false,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              enableDrag: false,
              builder: (_) {
                // Just Rename multiCart =>>> singleCart to see SingleCart :)
                return multiCartBottomSheet(context,
                    onTap: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => CartScreen())));
              });
        },
        child: Container(
          height: 60,
          width: 320,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.black),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  'View Cart',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.3),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 14),
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.grey.shade800),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                    size: 24,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
