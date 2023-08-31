import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Acoes extends StatefulWidget {
  const Acoes({super.key});

  @override
  State<Acoes> createState() => _AcoesState();
}

class _AcoesState extends State<Acoes> {
  @override
  Widget build(BuildContext context) { 
    return 
        WebViewScreen();
  }
}

// conteudo da web page
class WebViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool _isLoading = true;
    return Scaffold(
      
      body: 
          
          Stack(
            children: [
              InAppWebView(
                initialUrlRequest: URLRequest(url: Uri.parse('https://agrinho2023.blogspot.com')),
                onLoadStart: (controller, url) {

                    _isLoading = true;
                  
                },
                onLoadStop: (controller, url) {
                 
                    _isLoading = false;
                  
                },
              ),
              if (_isLoading)
                const Center(
                  child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                        Text('Aguarde o carregamento da página'),
                      ],
                    ),
                ),
            ],
          )


      );
  }
}