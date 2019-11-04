import 'package:ecommerce_app/src/widgets/home_page/custom_appBar.dart';
import 'package:flutter/material.dart';
import '../widgets/home_page/carousel_widget.dart';
import '../models/category.dart';
import '../widgets/home_page/products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new CustomAppBar(),
      drawer: new DrawerWidget(),
      body: ListView(
        children: <Widget>[
          CarouselWidget(),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Categories"),
          ),
          categories(),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Recent products"),
          ),
          Container(height: 520,child: ProductsWidget()),

        ],
      ),
    );
  }

  Widget categories() {
    return Container(
        height: 80,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, int index) {
            String title = categoryList[index].title;
            String imgLocation = categoryList[index].imgLocation;
            return Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 120,
                    padding: EdgeInsets.all(8),
                    child: Image.asset(
                      imgLocation,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Text(title),
              ],
            );
          },
        ));
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red[500],
                  Colors.red[500],
                  Colors.red[500],
                  Colors.red,
                ],
              ),
            ),
            accountName: Text("Abdi Mussa"),
            accountEmail: Text("abdimussa87@gmail.com"),
            currentAccountPicture: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.pink,
              ),
              title: Text("Home page"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.pink,
              ),
              title: Text("My account"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.shopping_basket,
                color: Colors.pink,
              ),
              title: Text("My orders"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.category,
                color: Colors.pink,
              ),
              title: Text("Categories"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
              title: Text("Favorites"),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.settings,
                //color: Colors.red,
              ),
              title: Text("Settings"),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.blueAccent,
              ),
              title: Text("About"),
            ),
          ),
        ],
      ),
    );
  }
}
