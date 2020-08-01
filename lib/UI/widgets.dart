import 'package:flutter/material.dart';
import 'package:vero/models/item.dart';

class DressItem extends StatelessWidget {
  final int index;
  DressItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
                child: Image(
                  height: 400,
                  image: AssetImage(dressList[index].imageUrl),
                ),
              ),
            ),
            Text(
              'Size : ' + dressList[index].size,
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'Price : \$' + dressList[index].price.toString(),
              style: TextStyle(fontSize: 20.0),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  'Buy',
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkirtItem extends StatelessWidget {
  final int index;
  SkirtItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
                child: Image(
                  height: 400,
                  image: AssetImage(skirtList[index].imageUrl),
                ),
              ),
            ),
            Text(
              'Size : ' + skirtList[index].size,
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'Price : \$' + skirtList[index].price.toString(),
              style: TextStyle(fontSize: 20.0),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  'Buy',
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
