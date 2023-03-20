import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/controller.dart';

class FoodHomePage extends NyStatefulWidget {
  final Controller controller = Controller();
  FoodHomePage({Key? key}) : super(key: key);

  @override
  _FoodHomePageState createState() => _FoodHomePageState();
}

class _FoodHomePageState extends NyState<FoodHomePage> {
  @override
  init() async {
    super.init();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                  color: Colors.white,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.white,
                ),
              ],
            ), // bar
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Every bite \nTastes like home",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                  ],
                ), // title

                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      // width: MediaQuery.of(context).size.width,
                      width: MediaQuery.of(context).size.width - 100,
                      height: 40,
                      padding: const EdgeInsets.all(10.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        itemExtent: 70,
                        shrinkWrap: true,
                        children: [
                          Text(
                            "Burger",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Pasta",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Pasta",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Pasta",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Pasta",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Pasta",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Pasta",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.filter_list),
                      color: Colors.white,
                    ),
                  ],
                ),

                // food card with image
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          height: MediaQuery.of(context).size.width / 2 - 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image:
                                  AssetImage("public/assets/images/food1.png"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Beef Burger",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Onion with cheese",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ 12.00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ), // food
          ],
        ),
      )),
    );
  }
}
