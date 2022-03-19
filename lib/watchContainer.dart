import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class watch extends StatelessWidget {
  const watch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1.4,
                      blurRadius: 4,
                      offset: Offset(
                          0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  //alignment: Alignment.bottomCenter,
                  children: [
                    Positioned(
                      child: Image.asset(
                        "assets/watch.png",
                        height: 150,
                        width: 145,

                      ),
                      top: -60,
                      left: 9,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 85),
                            child: Center(
                              child: Text(
                                "Apple Watch",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 23),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Text("Series 6 . Red"),
                          SizedBox(
                            height: 12,
                          ),
                          Text("\$ 359",style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF5956E9),
                              fontSize: 17
                          ),),

                        ],
                      ),
                    )
                  ],
                ),


              ),
            )


    );
  }
}
