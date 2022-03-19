import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myfav extends StatelessWidget {
  const myfav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int i = 100;
    return Scaffold(
      body: ListView(
        children: [
          for (int j = 1; j <= i; j++) myList(),
        ],
      ),
    );
  }
}

Widget myList() {
  return Card(
    child: Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      child: ListTile(
        leading: Image.asset(
          "assets/watch.png",
          height: 60,
          width: 50,
        ),
        title: Text(
          "Apple Watch",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "Series 6 . Red",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
        ),
        trailing: Text(
          "\$359",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF5956E9),
          ),
        ),
      ),
    ),
  );
}
