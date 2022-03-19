import 'package:firsstscreen/watchContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  homepage({Key? key}) : super(key: key);

  List<String> _categories = [
    "Food",
    "Electronics",
    "Groceries",
    "Dress",
    "Mobile",
    "Computer accessories"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (_, isScroll) {
            return [
              SliverAppBar(
                backgroundColor: Color(0xFFE5E5E5),
                collapsedHeight: 80,
                expandedHeight: 80,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Emon",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF000000),
                            fontSize: 27),
                      ),
                      Text(
                        "Let's get somrthing?",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF4F4C4C),
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
              )
            ];
          },
          body: Padding(
            padding: EdgeInsets.only(left: 15, top: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 100,
                          width: 220,
                          decoration: BoxDecoration(
                              color: Color(0xFFF46D38),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "40% Off During\nCovid 19",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 20),
                                ),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset(
                                      "assets/fruits.png",
                                      height: 40,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 100,
                          width: 220,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "40% Off During\nCovid 19",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 20),
                                ),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset(
                                      "assets/fruits.png",
                                      height: 40,
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 100,
                          width: 220,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "40% Off During\nCovid 19",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 20),
                                ),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Image.asset(
                                      "assets/fruits.png",
                                      height: 40,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Categories",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Text(
                          "View all",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xFFFF4800)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 30,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _categories.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5, bottom: 5),
                                child: Center(child: Text(_categories[index])),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      height: 500,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 13,
                          childAspectRatio: 170 / 280,
                        ),
                        itemCount: 100,
                        itemBuilder: (_, index) {
                          return watch();
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    ));
  }
}
