import 'package:flutter/material.dart';
import 'package:paypersa/data.dart';

Widget customContainer(
    {required String text,
      required Function onTap,
      required Color? containerColor,
      Color? textColor}) {
  return GestureDetector(
    onTap: () => onTap(),
    child: Container(
      alignment: Alignment.center,
      width: 80,
      height: 36,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(16)),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: textColor),
      ),
    ),
  );
}

Widget customCard(
    {required String title, required Color color, required String subTitle}) {
  return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(20), color: color),
      height: 80,
      width: 85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: 13),
            textAlign: TextAlign.center,
          )
        ],
      ));
}

Widget singleCartBottomSheet(BuildContext context,{required Function onTap}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Spacer(),
            const Text(
              'Items',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Spacer(),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: ConstColors.containerColor),
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 24,
                  )),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: const [
            Text(
              'Pasta Angebot',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Text(
              '\$ 32.00',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 10),
        const Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            '• 2 Pastagerichte nach Wahl • 1 kleiner\ngemischter Salat • Pizzabrötchen mit Aioli',
            style: TextStyle(
                fontWeight: FontWeight.w400, letterSpacing: 0.5, fontSize: 16),
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: 36,
              decoration: BoxDecoration(
                  color: ConstColors.containerColor,
                  borderRadius: BorderRadius.circular(14)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.remove),
                    SizedBox(width: 4),
                    Text('1'),
                    SizedBox(width: 4),
                    Icon(Icons.add),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: ()=>onTap(),
              child: Container(
                height: 60,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Text(
                        'Add to Cart',
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
                          Icons.add,
                          color: Colors.white,
                          size: 24,
                        ))
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget multiCartBottomSheet(BuildContext context, {required Function onTap}) {
  return SingleChildScrollView(
    child: SizedBox(
      height: 580,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Spacer(),
                const Text(
                  'Items',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: ConstColors.containerColor),
                      child: const Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 24,
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'Items',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                customCartContainer(
                    title: 'test 1', subTitle: '2.0', isTap: false),
                SizedBox(
                  height: 14,
                ),
                // ??????????????????????????? Size 1 ????????????????????????????
                Row(
                  children: const [
                    Text(
                      'size',
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    customCartContainer(
                        title: 'small', subTitle: '10.0', isTap: true),
                    SizedBox(width: 8),
                    customCartContainer(
                        title: 'medium', subTitle: '10.0', isTap: false),
                  ],
                ),
                //?????????????????????? Size 2 ?????????????????????????
                SizedBox(height: 14),
                Row(
                  children: const [
                    Text(
                      'Size 2',
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Column(
                  children: [
                    Row(
                      children: [
                        customCartContainer2(
                            title: 'Cheesy Fries ...', isTap: true),
                        SizedBox(width: 8),
                        customCartContainer2(
                            title: 'Test product', isTap: false),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        customCartContainer2(
                            title: 'Chicken Burg...', isTap: false),
                        SizedBox(width: 8),
                        customCartContainer2(title: 'Veg Burger', isTap: false),
                      ],
                    ),
                  ],
                ),

                // ????????????????????????? Topping Type 2???????????????????????????
                SizedBox(height: 12),
                Row(
                  children: const [
                    Text(
                      'Topping Type 2',
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    customCartContainer(
                        title: 'chilli', subTitle: '1.0', isTap: false),
                    SizedBox(width: 8),
                    customCartContainer(
                        title: 'chilli', subTitle: '1.0', isTap: false),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 36,
                  decoration: BoxDecoration(
                      color: ConstColors.containerColor,
                      borderRadius: BorderRadius.circular(14)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.remove),
                        SizedBox(width: 4),
                        Text('1'),
                        SizedBox(width: 4),
                        Icon(Icons.add),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>onTap(),
                  child: Container(
                    height: 60,
                    width: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Text(
                            'Add to Cart',
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
                              Icons.add,
                              color: Colors.white,
                              size: 24,
                            ))
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget customCartContainer(
    {required String title, required String subTitle, bool isTap = false}) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Container(
      width: 140,
      height: 50,
      decoration: BoxDecoration(
          color: ConstColors.cardColor,
          borderRadius: BorderRadius.circular(14),
          border: isTap
              ? Border.all(width: 2, color: ConstColors.radioButtonColor!)
              : const Border()),
      child: Padding(
        padding:
        EdgeInsets.only(left: 12, top: isTap ? 4 : 8, right: 5, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                '\$ $subTitle',
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
              isTap
                  ? Icon(Icons.radio_button_checked_rounded,
                  size: 18, color: ConstColors.radioButtonColor)
                  : Container()
            ])
          ],
        ),
      ),
    ),
  );
}

Widget customCartContainer2({required String title, bool isTap = false}) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Container(
      width: 140,
      height: 50,
      decoration: BoxDecoration(
        color: ConstColors.cardColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 16,
            top: 16,
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Positioned(
              right: 5,
              top: 5,
              child: isTap
                  ? Icon(
                Icons.check_circle,
                color: ConstColors.radioButtonColor,
                size: 22,
              )
                  : Container())
        ],
      ),
    ),
  );
}

Widget iconContainer({required IconData icon, required dynamic color}){
  return  Container(
      margin: EdgeInsets.symmetric(horizontal: 14),
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: color),
      child: Icon(
        icon,
        color: Colors.black,
        size: 20,
      ));

}

Widget iconContainer2({required IconData icon, required dynamic color}){
  return  Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: color),
      child: Icon(
        icon,
        color: Colors.black,
        size: 28,
      ));

}
