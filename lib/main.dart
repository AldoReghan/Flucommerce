import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flucommerce',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 340,
                  color: Colors.yellow,
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  right: 20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Flucommerce",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ),
                
                Positioned(
                  top: 95,
                  left: 10,
                  right: 10,
                  child: Container(
                    height: 180,
                    child: Swiper(
                      itemBuilder: (context, index) {
                        return Image.network(
                            "http://via.placeholder.com/288x188");
                      },
                      itemCount: 3,
                      viewportFraction: 0.8,
                      scale: 0.9,
                    ),
                  )
                ),
                Positioned(
                  bottom: -30,                                                                                                     
                  left: 20,
                  right: 20,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.black)
                    ),                                                      
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.search, color: Colors.blue),
                          SizedBox(width: 15,),
                          Text("Search...", style: TextStyle(
                            fontSize: 18
                          ),)
                        ],
                      ),
                    )
                  )
                )

              ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  Text("Categories", style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  Spacer(),
                  Text("Show All", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text("Assault")
                      )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text("SMG")
                      )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text("Pistol")
                      )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  Text("Recommended", style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  Spacer(),
                  Text("Show All", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 90,
                          width: 300,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(9),
                                    bottomLeft: Radius.circular(9)
                                  ),
                                  color: Colors.red,
                                ),
                                child: Text("data"),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Text("data")
                                  ],
                                ),
                              )
                            ],
                          )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.home, color: Colors.grey,),
            Icon(Icons.favorite, color: Colors.grey,),
            Icon(Icons.compare_arrows, color: Colors.grey,),
            Icon(Icons.person_pin, color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}
