import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'myAd1.dart';
import 'myFav.dart';

class myads extends StatelessWidget {
  myads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Text(
                  "My Ads",
                  style: TextStyle(color: Colors.black),
                ),
                centerTitle: true,
                bottom: TabBar(
                  tabs: [
                    Tab(
                        icon: Icon(Icons.shopping_basket_outlined),
                        text: "My Ads"),
                    Tab(
                        icon: Icon(Icons.favorite_border_outlined),
                        text: "My Favourites")
                  ],
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                ),
              ),
              body: TabBarView(
                children: [myad1(), myfav()],
              )),
        ),
      );
}
