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
                  icon: Icon(Icons.view_list),
                  hintText: "Nama Produk"
                ),
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
                decoration: InputDecoration(
                  icon: Icon(Icons.category)
                ),
                attribute: "Kategori",
                hint: Text("Pilih Kategori"),
                items: null,
              )
              )
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.format_list_numbered),
                  hintText: "Stok"
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.monetization_on),
                  hintText: "Harga Produk"
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.description),
                  hintText: "Deskripsi/Spesifikasi"
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}