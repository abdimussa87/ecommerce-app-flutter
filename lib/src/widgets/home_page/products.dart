import 'package:flutter/material.dart';
import '../../models/product.dart';

class ProductsWidget extends StatefulWidget {
  @override
  _ProductsWidgetState createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  List<Product> productList = [
    Product(
        name: "Blazer",
        imgLocation: "assets/images/products/blazer1.jpeg",
        oldPrice: 100,
        price: 20),
    Product(
        name: "Blazer2",
        imgLocation: "assets/images/products/blazer2.jpeg",
        oldPrice: 10,
        price: 120),
    Product(
        name: "Dress",
        imgLocation: "assets/images/products/dress1.jpeg",
        oldPrice: 80,
        price: 30),
    Product(
        name: "Dress2",
        imgLocation: "assets/images/products/dress2.jpeg",
        oldPrice: 100,
        price: 50),
    Product(
        name: "Hills1",
        imgLocation: "assets/images/products/hills1.jpeg",
        oldPrice: 200,
        price: 100),
    Product(
        name: "Hills2",
        imgLocation: "assets/images/products/hills2.jpeg",
        oldPrice: 150,
        price: 120),
    Product(
        name: "Pants1",
        imgLocation: "assets/images/products/pants1.jpg",
        oldPrice: 100,
        price: 200),
    Product(
        name: "Pants2",
        imgLocation: "assets/images/products/pants2.jpeg",
        oldPrice: 60,
        price: 50),
    Product(
        name: "shoe1",
        imgLocation: "assets/images/products/shoe1.jpg",
        oldPrice: 80,
        price: 20),
    Product(
        name: "Skt1",
        imgLocation: "assets/images/products/skt1.jpeg",
        oldPrice: 100,
        price: 80),
    Product(
        name: "Skt2",
        imgLocation: "assets/images/products/skt2.jpeg",
        oldPrice: 90,
        price: 60),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, int index) {
        return SingleProductWidget(
          name: productList[index].name,
          imgLocation: productList[index].imgLocation,
          oldPrice: productList[index].oldPrice,
          price: productList[index].price,
        );
      },
    );
  }
}

class SingleProductWidget extends StatelessWidget {
  final String name;
  final String imgLocation;
  final double oldPrice;
  final double price;

  SingleProductWidget({this.name, this.imgLocation, this.oldPrice, this.price});
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: name,
      child: Material(
        child: InkWell(
          onTap: (){},
          child: GridTile(
            child: Image.asset(imgLocation),
            footer: Container(
              padding: EdgeInsets.all(8),
              color: Colors.white70,
              child: Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        ),
      ),
    );
  }
}
