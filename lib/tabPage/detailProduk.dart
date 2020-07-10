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
                  )),

                  Positioned(
                    top: 90,
                    left: 20,
                    right: 20,
                    child: Hero(
                      tag: 'chair', 
                      child: Image.asset("assets/bigchair.png", height: 230, width: 230,)
                    )
                  ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Produk Name", style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 5,),
                        Text("Stok : 12")
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text("Rp. 125.000", style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                    ),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(thickness: 0.5, color: Colors.black,),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Specification", style: TextStyle(
                      fontSize: 20
                    ),),
                    SizedBox(height: 10,),
                    Text("lorem ipsum dolor, sit amet")
                  ],
                ),
              )
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange,
                ),
                height: 50,
                width: 150,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.favorite,),
                      Text("Add to Favorite")
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.shopping_cart, color: Colors.white,),
                      Text("Add to Cart", style: TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}