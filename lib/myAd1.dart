import 'package:firsstscreen/watchContainer.dart';
import 'package:flutter/cupertino.dart';

class myad1 extends StatelessWidget {
  const myad1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
