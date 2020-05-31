import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Product List"),
        ),
        body: ZLHomePage(),
      ),
    );
  }
}

class ZLHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          ProductItem("macbook1", "desc1", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
          ProductItem("macbook2", "desc2", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
          ProductItem("macbook3", "desc3", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg"),
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {

  final String title;
  final String desc;
  final String imageURL;

  ProductItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: <Widget>[
          Text(title, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text(desc, style: TextStyle(fontSize: 20),),
          SizedBox(height: 5,),
          Image.network(imageURL)
        ],
      ),
    );
  }
}
