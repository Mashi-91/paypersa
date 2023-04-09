import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:paypersa/Widgets.dart';
import 'package:paypersa/data.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 4,right: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconContainer(
                      icon: EvaIcons.trash2, color: ConstColors.containerColor),
                  Container(
                    width: 110,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: const [
                          Text(
                            '\$ 33.00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.keyboard_arrow_up,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 18),
              Padding(
                padding:  const EdgeInsets.only(left: 14,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1 X Fanta',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          '5.00 \$',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            iconContainer2(
                                icon: Icons.remove,
                                color: ConstColors.containerColor),
                            SizedBox(width: 12),
                            iconContainer2(
                                icon: Icons.add, color: ConstColors.containerColor),
                            SizedBox(width: 12),
                            Icon(
                              Icons.message_outlined,
                              size: 28,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              const Padding(
                padding: const EdgeInsets.only(left: 14, right: 10),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 14),
                    child: Text(
                      '1 X modifier 1',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          '1.00 \$',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            iconContainer2(
                                icon: Icons.remove,
                                color: ConstColors.containerColor),
                            SizedBox(width: 12),
                            iconContainer2(
                                icon: Icons.add, color: ConstColors.containerColor),
                            SizedBox(width: 12),
                            Icon(
                              Icons.message_outlined,
                              size: 28,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 14, right: 10),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 18),
              Column(
                children: [
                  customTitleText(
                      title: '1 X Pizza Hawaii', trailingTitle: '27.00 \$'),
                  SizedBox(height: 10),
                  customSubTitleText(
                      title: '1 X Mini, @ 21cm', trailingTitle: '10.00 \$'),
                  SizedBox(height: 5),
                  customSubTitleText(
                      title: '1 X mit Ananas', trailingTitle: '1.00 \$'),
                  SizedBox(height: 5),
                  customSubTitleText(
                      title: '1 X mit Artischocken', trailingTitle: '1.00 \$'),
                  SizedBox(height: 5),
                  customSubTitleText(
                      title: '1 X mit Barbecuesauce', trailingTitle: '1.00 \$'),
                  SizedBox(height: 5),
                  customSubTitleText(
                      title: '1 X mit Bacon', trailingTitle: '1.00 \$'),
                  SizedBox(height: 5),
                  customSubTitleText(
                      title: '1 X mit Bohnen', trailingTitle: '1.00 \$'),
                  SizedBox(height: 5),
                  customSubTitleText(
                      title: '1 X mit Bolognese', trailingTitle: '1.00 \$'),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        iconContainer2(
                            icon: Icons.remove, color: ConstColors.containerColor),
                        SizedBox(width: 12),
                        iconContainer2(
                            icon: Icons.add, color: ConstColors.containerColor),
                        SizedBox(width: 12),
                        Icon(
                          Icons.message_outlined,
                          size: 28,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 14, right: 10),
                child: Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customIconContainer(
                      color: ConstColors.containerColor!,
                      width: size.width * 0.47,
                      text: 'Home',
                      icon: Icons.keyboard_return_sharp),
                  customIconContainer(
                      color: ConstColors.containerColor!,
                      width: size.width * 0.48,
                      text: 'Print',
                      icon: Icons.print),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customIconContainer(
                    height: 75,
                      color: Colors.black,
                      textcolor: true,
                      width: size.width * 0.53,
                      text: 'Interim receipt',
                      icon: Icons.receipt_long),
                  customIconContainer(
                      color: Colors.yellow,
                      width: size.width * 0.42,
                      text: 'Pay now',
                      icon: Icons.currency_pound_rounded),
                ],
              ),
              SizedBox(height: 5,)
            ],
          ),
        ),
      ),
    );
  }
}

Widget customTitleText({required String title, required String trailingTitle}) {
  return Padding(
    padding: EdgeInsets.only(left: 14,right: 10),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              trailingTitle,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget customSubTitleText(
    {required String title, required String trailingTitle}) {
  return Padding(
    padding: EdgeInsets.only(left: 18,right: 10),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              trailingTitle,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget customIconContainer(
    {required String text,
    required IconData icon,
    required Color color,
    bool textcolor=false,
      double? height,
    required double width}) {
  return Container(
    padding: EdgeInsets.all(8),
    width: width,
    height: height ?? 70,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(24), color: color),
    child: Row(
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: textcolor ? Colors.white : Colors.black),
        ),
        Spacer(),
        iconContainer2(icon: icon, color: Colors.white)
      ],
    ),
  );
}
