import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int hargaProduk;

  const new({
    super.key,
    required this.kodeProduk,
    required this.namaProduk,
    required this.hargaProduk,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Produk")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("Kode Produk : $kodeProduk"),
            Text("Nama Produk : $namaProduk"),
            Text("harga Produk : $hargaProduk"),
          ],
        ),
      ),
    );
  }
}
