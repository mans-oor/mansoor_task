import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../model/best_title.dart';
import '../model/list_model.dart';
import '../model/shop_category.dart';
import '../model/user_model.dart';
import '../widget/widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool like = false;
  final List<String> imgList = [
    'assets/food_1.png',
    'assets/food_2.png',
    'assets/food_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: appBarMain(context)),
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.grey[300],
                width: width,
                height: MediaQuery.of(context).size.height * 0.06,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('HEAD TIL 1'),
                    Text('HEAD TIL 2'),
                    Text('HEAD TIL 3'),
                    Text('HEAD TIL 4'),
                  ],
                ),
              ),
              SizedBox(
                height: 150.0,
                width: width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CarouselSlider.builder(
                      options: CarouselOptions(
                          height: MediaQuery.of(context).size.height * 0.2,
                          autoPlay: true,
                          viewportFraction: 1),
                      itemCount: imgList.length,
                      itemBuilder: (context, index, realIndex) {
                        final urlImages = imgList[index];
                        return buildImage(urlImages, index);
                      },
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: width,
                        height: 30,
                        color: Colors.white70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('AED 300/-',
                                style: TextStyle(fontSize: 18)),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                '50% Off',
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                minimumSize: const Size(80, 40),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Best practice Definition & Meaning',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'SHOP',
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 110,
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black87),
                              child: Center(
                                  child: Icon(
                                list[index].iconData,
                                color: Colors.white,
                                size: 30,
                              )),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: Text(
                                list[index].tittle,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0, top: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '#BEST TITTLE',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 1.1,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.36,
                      color: Colors.white,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: bestTittleList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width * 0.31,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                        child: Image.network(
                                            bestTittleList[index].image)),
                                    Positioned(
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            like = !like;
                                          });
                                        },
                                        child: Icon(Icons.favorite,
                                            size: 30.0,
                                            color: (like)
                                                ? Colors.red
                                                : Colors.grey),
                                      ),
                                      right: 0,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      bestTittleList[index].oldPrice,
                                      style: const TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    Container(
                                      width: 55,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        color: Colors.orange,
                                      ),
                                      child: Center(
                                          child: Text(
                                        bestTittleList[index].off,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      )),
                                    )
                                  ],
                                ),
                                Text(bestTittleList[index].newPrice,
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                Text(bestTittleList[index].desc,
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                Text(bestTittleList[index].tittleProduct,
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            width: 2,
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.36,
                      color: Colors.white,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: bestTittleList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width * 0.31,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    child: Image.network(
                                        bestTittleList[index].image)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      bestTittleList[index].oldPrice,
                                      style: const TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    Container(
                                      width: 55,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        color: Colors.orange,
                                      ),
                                      child: Center(
                                          child: Text(
                                        bestTittleList[index].off,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      )),
                                    )
                                  ],
                                ),
                                Text(bestTittleList[index].newPrice,
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                Text(bestTittleList[index].desc,
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                Text(bestTittleList[index].tittleProduct,
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            width: 2,
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.36,
                      color: Colors.white,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: bestTittleList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width * 0.31,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    child: Image.network(
                                        bestTittleList[index].image)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      bestTittleList[index].oldPrice,
                                      style: const TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    Container(
                                      width: 55,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        color: Colors.orange,
                                      ),
                                      child: Center(
                                          child: Text(
                                        bestTittleList[index].off,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      )),
                                    )
                                  ],
                                ),
                                Text(bestTittleList[index].newPrice,
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                Text(bestTittleList[index].desc,
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                                Text(bestTittleList[index].tittleProduct,
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            width: 2,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0, top: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '#TOP TITTLE',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: userList.length,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 110,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black87),
                            child: Center(
                                child: Icon(
                              userList[index].iconData,
                              color: Colors.white,
                              size: 30,
                            )),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Center(
                            child: Text(
                              userList[index].user,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '#SHOP BY CATEGORY',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                    ),
                    Text(
                      'View All',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: const Center(
                            child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 30,
                        )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Sub Category")
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: const Center(
                            child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 30,
                        )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("Sub Category")
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: width,
                height: MediaQuery.of(context).size.height * 0.36,
                color: Colors.white,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.31,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              child: Image.network(categoryList[index].image)),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                categoryList[index].oldPrice,
                                style: const TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey,
                                    fontSize: 15),
                              ),
                              Container(
                                width: 55,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  color: Colors.orange,
                                ),
                                child: Center(
                                    child: Text(
                                  categoryList[index].off,
                                  style: const TextStyle(color: Colors.white),
                                )),
                              )
                            ],
                          ),
                          Text(categoryList[index].newPrice,
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600)),
                          Text(categoryList[index].desc,
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600)),
                          Text(categoryList[index].tittleProduct,
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 2,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('TERM OF USE'),
                        Text('CONTACT'),
                        Text('CAREER'),
                        Text('AREA RANGE'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'PROJECT BY ',
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'EZENESS TECHNOLOGY',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => SizedBox(
        width: double.infinity,
        child: Image.asset(urlImage, fit: BoxFit.cover),
      );
}
