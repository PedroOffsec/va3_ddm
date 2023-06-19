import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Prato extends StatelessWidget {
  final String urlImagem;
  final String nome;
  final String descricao;
  final double preco;

  const Prato(
      {required this.urlImagem,
      required this.nome,
      required this.descricao,
      required this.preco,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Column(
              children: [
                Image.asset(urlImagem),
              ],
            ),
          ),
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(nome,
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      descricao,
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Text(
                    'R\$: $preco',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: const Color.fromARGB(239, 231, 98, 9),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
