import 'package:flutter/foundation.dart';

class Category {
  final String title;
  final String imgLocation;

  Category({@required this.title,@required this.imgLocation});
}

List<Category> categoryList = [
  Category(title: "TShirts", imgLocation: "assets/images/cats/tshirt.png"),
  Category(title: "Dress",imgLocation: "assets/images/cats/dress.png"),
  Category(title: "Formal",imgLocation: "assets/images/cats/formal.png"),
  Category(title: "Informal",imgLocation: "assets/images/cats/informal.png"),
  Category(title: "Shoe",imgLocation: "assets/images/cats/shoe.png"),
  Category(title:"Accessories",imgLocation: "assets/images/cats/accessories.png"),
  Category(title: "Jeans",imgLocation: "assets/images/cats/jeans.png")
];
