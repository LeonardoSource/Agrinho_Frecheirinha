import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'saudePage.dart';
import 'acoesPage.dart';
import 'telaInicial.dart';
import 'game.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      title: "Programa Agrinho Escola FFP",
      theme: ThemeData(
        primarySwatch: Colors.green,
          )
      );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;

   
   // Lista de telas que 
   //serão exibidas ao selecionar um item da barra de navegação


  final List<Widget> _pages = [
    // 01 tela home
    const TelaInicial(),
    // 02 tela sobre saude
    const Saude(),
    // 03 tela sobre as acoes desenvolvidas
    const Acoes(),
    // 04 tela sobre o quiz jogos
    GridGame(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _pages[_currentIndex], // Conteúdo da tela selecionada
      bottomNavigationBar: ConvexAppBar(

        backgroundColor: Colors.green,
        color: Colors.white,
        activeColor: Colors.white,

        items: const [
          TabItem(icon: Icons.home, title: 'Início'),
          TabItem(icon: Icons.health_and_safety_rounded, title: 'Saúde'),
          TabItem(icon: Icons.handshake, title: 'Ações'),
          TabItem(icon: Icons.games_rounded, title: 'Quiz'),
        ],

        initialActiveIndex: _currentIndex, // Índice do item selecionado
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Atualiza o índice ao selecionar um item
          });
        },
      
      ),
    );
  }
}
