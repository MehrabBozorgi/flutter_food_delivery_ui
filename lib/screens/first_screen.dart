import 'package:flutter/material.dart';
import 'package:flutter_food_app_ui/model/model_class.dart';

import '../styles/styles_color.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ModelClass> modelClass = [
      ModelClass(
          id: '1',
          title: 'Double Cheese Burger',
          price: '8\$',
          image: 'burger1.jpg',
          description:
              'Bacon ,Onions ,Bread Crumbs ,Worcestershire sauce ,Garlic ,Grated or shredded cheese ,Barbecue sauce'),
      ModelClass(
          id: '2',
          title: 'Pizza Margherita',
          price: '15\$',
          image: 'pizza1.jpg',
          description:
              'bubbly crust, crushed San Marzano tomato sauce, fresh mozzarella and basil, a drizzle of olive oil, and a sprinkle of salt'),
      ModelClass(
          id: '3',
          title: 'Hot dog',
          price: '10\$',
          image: 'hotdog.jpg',
          description:
              'Frankfurter, Frank, Wiener, Weenie, Tube Steak, Sausage, Banger, Coney'),
      ModelClass(
          id: '4',
          title: 'Pepperoni Pizza',
          price: '22\$',
          image: 'pizza2.jpg',
          description:
              'Bacon ,Onions ,Bread Crumbs ,Worcestershire sauce ,Garlic ,Grated or shredded cheese ,Barbecue sauce'),
    ];

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: height*0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.05),
                            width: width * 0.75,
                            height: height * 0.07,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(2, 2),
                                  blurRadius: 5,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(width),
                            ),
                            child: const Text(
                              'Search for food',
                              style: textStyle6,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(width * 0.04),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width),
                              gradient: const LinearGradient(
                                colors: [
                                  color1,
                                  color2,
                                ],
                              ),
                            ),
                            child: const Icon(
                              Icons.filter_alt,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.03),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                const Text(
                                  'All',
                                  style: textStyle3,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: height * 0.01),
                                  width: width * 0.15,
                                  height: height * 0.003,
                                  color: color2,
                                ),
                              ],
                            ),
                            SizedBox(width: width * 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: width * 0.03),
                                Image.asset(
                                  'title1.png',
                                  width: width * 0.08,
                                ),
                                SizedBox(width: width * 0.03),
                                const Text(
                                  'Burgers',
                                  style: textStyle5,
                                ),
                              ],
                            ),
                            SizedBox(width: width * 0.03),
                            Row(
                              children: [
                                Image.asset(
                                  'title2.png',
                                  width: width * 0.08,
                                ),
                                SizedBox(width: width * 0.03),
                                const Text(
                                  'Chicken',
                                  style: textStyle5,
                                ),
                              ],
                            ),
                            SizedBox(width: width * 0.03),
                            Row(
                              children: [
                                Image.asset(
                                  'title3.png',
                                  width: width * 0.08,
                                ),
                                SizedBox(width: width * 0.03),
                                const Text(
                                  'Pizza',
                                  style: textStyle5,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: ListView.builder(
                    itemCount: modelClass.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(width * 0.03),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        width: width,
                        height: height * 0.18,
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.03,
                          vertical: height * 0.02,
                        ),
                        margin: EdgeInsets.symmetric(vertical: height * 0.01),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    modelClass[index].title,
                                    style: textStyle2,
                                  ),
                                  Text(
                                    modelClass[index].description,
                                    style: textStyle8,
                                    maxLines: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        modelClass[index].price,
                                        style: textStyle5,
                                      ),
                                      SizedBox(width: width*0.04),
                                      CircleAvatar(
                                        radius: width*0.045,
                                        backgroundColor: Colors.red[100],
                                        child:  Icon(
                                          Icons.shopping_cart_outlined,
                                          color: color2,
                                          size: width*0.05,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(width * 0.04),
                                child: Image.asset(
                                  modelClass[index].image,
                                  width: width,
                                  height: height,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
