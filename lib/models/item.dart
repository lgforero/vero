class Item {
  final String imageUrl;
  final String size;
  final double price;

  Item({this.imageUrl, this.size, this.price});
}

final skirtList = [
  Item(
    imageUrl: 'assets/skirt01.jpg',
    size: 'Medium',
    price: 10.99,
  ),
  Item(
    imageUrl: 'assets/skirt02.jpg',
    size: 'Small',
    price: 10.99,
  ),
];

final dressList = [
  Item(
    imageUrl: 'assets/dress01.jpg',
    size: 'Medium',
    price: 10.99,
  ),
  Item(
    imageUrl: 'assets/dress02.jpg',
    size: 'Small',
    price: 10.99,
  ),
];
