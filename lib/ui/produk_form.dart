import 'package:flutter/material.dart';
import 'package:simple_app/ui/produk_detail.dart';

class ProdukForm extends StatefulWidget {
  const new({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukController = TextEditingController();
  final _namaProdukController = TextEditingController();
  final _hargaProdukController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Produk")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            textBoxKodeProduk(),
            textBoxNamaProduk(),
            textBoxHargaProduk(),
            tombolSimpan(),
          ],
        ),
      ),
    );
  }

  TextField textBoxKodeProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukController,
    );
  }

  TextField textBoxNamaProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukController,
    );
  }

  TextField textBoxHargaProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Harga Produk"),
      controller: _hargaProdukController,
    );
  }

  ElevatedButton tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        String kodeProduk = _kodeProdukController.text;
        String namaProduk = _namaProdukController.text;
        int harga = int.parse(_hargaProdukController.text);

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) {
              return ProdukDetail(
                kodeProduk: kodeProduk,
                namaProduk: namaProduk,
                hargaProduk: harga,
              );
            },
          ),
        );
      },
      child: const Text('Simpan'),
    );
  }
}
