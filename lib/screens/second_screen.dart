import 'package:flutter/material.dart';

import '../styles/styles_color.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const desc =
        'Bacon ,Onions ,Bread Crumbs ,Worcestershire sauce ,Garlic ,Grated or shredded cheese ,Barbecue sauce';
    return Container(
      color: color2,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: width,
            height: height,
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.04,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFD6D6D6),
                  Colors.white,
                  Colors.white,
                  Color(0xFFD6D6D6),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: height * 0.02),
                  alignment: Alignment.centerLeft,
                  width: width,
                  child: Icon(
                    Icons.close,
                    color: Colors.grey,
                    size: width * 0.08,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Double\nCheese Burger',
                      style: textStyle1,
                    ),
                    Text(
                      '8\$',
                      style: textStyle9,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text(
                  desc,
                  style: textStyle8,
                ),
                SizedBox(height: height * 0.02),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(width * 0.03),
                        child: Image.asset(
                          'burger1.jpg',
                          width: width * 0.48,
                          height: height * 0.22,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: width * 0.03),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(width * 0.03),
                        child: Image.asset(
                          'burger2.jpg',
                          width: width * 0.48,
                          height: height * 0.22,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                SizedBox(
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Additional',
                        style: textStyle2,
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: [
                          Container(
                            width: width * 0.06,
                            height: height * 0.03,
                            margin: EdgeInsets.only(right: width * 0.02),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF616161),
                              ),
                              borderRadius: BorderRadius.circular(width * 0.01),
                            ),
                          ),
                          const Text(
                            'Casesar Salad(3\$)',
                            style: textStyle7,
                          )
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: width * 0.07,
                            height: height * 0.04,
                            margin: EdgeInsets.only(right: width * 0.02),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF616161),
                              ),
                              borderRadius: BorderRadius.circular(width * 0.01),
                              color: color2,
                            ),
                            child: const Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'Garlic bread(4.5\$)',
                            style: textStyle7,
                          )
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: [
                          Container(
                            width: width * 0.06,
                            height: height * 0.03,
                            margin: EdgeInsets.only(right: width * 0.02),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF616161),
                              ),
                              borderRadius: BorderRadius.circular(width * 0.01),
                            ),
                          ),
                          const Text(
                            'French Fries(5\$)',
                            style: textStyle7,
                          )
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        children: [
                          Container(
                            width: width * 0.06,
                            height: height * 0.03,
                            margin: EdgeInsets.only(right: width * 0.02),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF616161),
                              ),
                              borderRadius: BorderRadius.circular(width * 0.01),
                            ),
                          ),
                          const Text(
                            'Coca Cola(2.5\$)',
                            style: textStyle7,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                        alignment: Alignment.center,
                        width: width,
                        height: height * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(width),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: width * 0.02),
                            Icon(
                              Icons.add,
                              size: width * 0.08,
                            ),
                            SizedBox(width: width * 0.02),
                            const Text(
                              '2',
                              style: textStyle2,
                            ),
                            SizedBox(width: width * 0.02),
                            Icon(
                              Icons.remove,
                              size: width * 0.08,
                            ),
                            SizedBox(width: width * 0.02),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                        alignment: Alignment.center,
                        width: width,
                        height: height * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(width),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(2, 2),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: width * 0.02),
                            const Text(
                              'XL',
                              style: textStyle2,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              size: width * 0.08,
                            ),
                            SizedBox(width: width * 0.02),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: height * 0.03),
                  width: width,
                  height: height * 0.08,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width),
                    gradient: const LinearGradient(
                      colors: [
                        color1,
                        color1,
                        color2,
                      ],
                    ),
                  ),
                  child: const Text(
                    '25\$|Add to Cart',
                    style: textStyle4,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
