import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const new({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Data Produk')),
      body: ListView(
        children: const [
          Card(
            child: ListTile(title: Text('Kulkas'), subtitle: Text('30000')),
          ),
          Card(
            child: ListTile(
              title: Text('Playstation'),
              subtitle: Text('30000'),
            ),
          ),
          Card(
            child: ListTile(title: Text('Radio'), subtitle: Text('30000')),
          ),
        ],
      ),
    );
  }
}
