import 'package:flutter/material.dart';

class InfoCity extends StatefulWidget {
  const InfoCity({super.key});

  @override
  State<InfoCity> createState() => _InfoCityState();
}

class _InfoCityState extends State<InfoCity> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: 
        Column(
          children: [
            SizedBox(height: 10,),
            Text(
              'Frecheirinha é um município brasileiro do estado do Ceará. Localiza-se na Mesorregião do Noroeste Cearense e pertence à Região Metropolitana de Sobral. De acordo com o último Censo realizado pelo IBGE em 2010, Frecheirinha teria uma população de 12.991 habitantes, com uma densidade demográfica de 71,68 hab/km². Sua população estimada em 2019 era de 14.072 habitantes. É considerado atualmente como o maior polo de produção de moda íntima do Ceará e um dos maiores do Brasil, com indústrias que são consolidadas nacionalmente como a Diamantes Lingerie.',
              textAlign: TextAlign.justify,
              ),
          ],
        ),
      
      ), 
      );
  }
}