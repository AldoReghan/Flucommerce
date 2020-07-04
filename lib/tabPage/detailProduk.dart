import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detail App',
      home: DetailProduk(),
    );
  }
}

class DetailProduk extends StatefulWidget {
  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0EFEE),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue[700],
                        Color(0xffF0EFEE)
                      ])
                  ),
                ),

                Positioned(
                  top: 50,
                  left: 20,
                  right: 20,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.arrow_back_ios, color: Colors.white,),
                      Spacer(),
                      Text("Detail Produk", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white
                        ),),
                      Spacer(),
                      Icon(Icons.favorite, color: Colors.white,),
                      SizedBox(width: 20,),
                      Icon(Icons.shopping_cart, color: Colors.white,),
                    ],
                  ))
              ],
            )
          ],
        )
      ),
    );
  }
}