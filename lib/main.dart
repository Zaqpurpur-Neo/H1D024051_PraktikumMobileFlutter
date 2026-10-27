import 'package:flutter/material.dart';
import 'package:simple_app/column_widget.dart';
import 'package:simple_app/hello_world.dart';
import 'package:simple_app/row_widget.dart';
import 'package:simple_app/theme/ColorSceme.dart';
import 'package:simple_app/ui/product_page.dart';
import 'package:simple_app/ui/produk_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      debugShowCheckedModeBanner: false,
      theme: customLightTheme(context),
      home: ProductPage(),
    );
  }
}
