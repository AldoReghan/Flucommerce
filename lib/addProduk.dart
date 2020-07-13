import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Prodduk',
      home: AddProduk(),
    );
  }
}

class AddProduk extends StatefulWidget {
  @override
  _AddProdukState createState() => _AddProdukState();
}

class _AddProdukState extends State<AddProduk> {
  String idKategori;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Product"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.view_list), hintText: "Nama Produk"),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: FormBuilder(
                    initialValue: {
                      'date': DateTime.now(),
                      'accept_terms': false,
                    },
                    autovalidate: false,
                    child: FormBuilderDropdown(
                      decoration: InputDecoration(icon: Icon(Icons.category)),
                      attribute: "Kategori",
                      hint: Text("Pilih Kategori"),
                      items: null,
                    ))),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.format_list_numbered), hintText: "Stok"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.monetization_on),
                    hintText: "Harga Produk"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.description),
                    hintText: "Deskripsi/Spesifikasi"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 7, color: Colors.grey, offset: Offset(0, 5))
                  ]),
                  child: Image.network("http://via.placeholder.com/288x188")),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Center(
            child: Text(
          "Submit",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )),
      ),
    );
  }
}
