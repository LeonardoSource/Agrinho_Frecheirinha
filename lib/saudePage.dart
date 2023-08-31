// ignore: file_names
import 'package:flutter/material.dart';
import 'dicas.dart';

class Saude extends StatefulWidget {
  const Saude({super.key});

  @override
  _Saude createState() => _Saude();
}

class _Saude extends State<Saude> {
  bool _expanded = false;
  // mapeamento ds pastas e tamanho da lisa de imagens
  Map<String, List<dynamic>> dicasList = {
      'Dicas sobre alimentação': ['assets/alimentacao/', 2],
      //'Agua é saudável': 'agua/',
      'Saúde Bucal': ['assets/boca/', 2],
      'Sobre Obesidade': ['assets/obesidade/', 5],
      'Vida saudável': ['assets/saudavel/', 5]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DICAS PARA UMA VIDA SAUDÁVEL'),
      ),
      body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: 1.0,
          image: AssetImage('assets/fundo.png'), // Caminho da imagem
          fit: BoxFit.fitWidth,
        )
            ),
        child: 
          Column(
            children: [
              // Use um Expanded para preencher o espaço restante na Column
              Expanded(
                child: ListView.builder(
                  itemCount: dicasList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Dica(
                        dicasList.keys.toList()[index],
                        dicasList[dicasList.keys.toList()[index]]![0].toString(),
                        dicasList[dicasList.keys.toList()[index]]![1] as int,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
      ),
    );
  }
}
