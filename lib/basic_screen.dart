import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:va3/prato.dart';
import 'dart:convert';

class BasicScreen extends StatefulWidget {
  const BasicScreen({super.key});

  @override
  State<StatefulWidget> createState() => _BasicScreen();
}

class _BasicScreen extends State<BasicScreen> {
  List<Prato> _cardapio = [];

  @override
  void initState() {
    super.initState();
    _carregarCardapio();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Breakfast',
              style: GoogleFonts.roboto(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/banner.png',
            ),
            Expanded(
                child: Scrollbar(
              child: ListView(
                children: _cardapio,
              ),
            )),
          ],
        ),
      ),
    );
  }

  Future<void> _carregarCardapio() async {
    final String jsonString =
        await rootBundle.loadString('assets/cardapio.json');
    final jsonResponse = jsonDecode(jsonString);

    setState(() {
      _cardapio.clear();
      _cardapio.addAll((jsonResponse['cardapio'] as List).map((e) => Prato(
          urlImagem: e['urlImagem'],
          nome: e['nome'],
          descricao: e['descricao'],
          preco: e['preco'])));
    });
  }
}
