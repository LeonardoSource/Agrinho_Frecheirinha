import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselInicial extends StatefulWidget {
  
  @override
  _CarouselInicial createState() => _CarouselInicial();
}

class _CarouselInicial extends State<CarouselInicial> {
  List<String> imageUrls = [
        'assets/inicial/1.png', 'assets/inicial/2.png', 'assets/inicial/3.jpg', 
        'assets/inicial/4.jpg', 'assets/inicial/5.jpg', 'assets/inicial/6.jpg', 
        'assets/inicial/7.jpg', 'assets/inicial/8.jpg'
    ];

  // ignore: unused_field
  int _currentIndex = 0;
  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {

    return CarouselSlider.builder(
      itemCount: imageUrls.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          padding: EdgeInsets.all(5),
          color: Colors.white,
          child:
            Image.asset(
              imageUrls[index],
              fit: BoxFit.fitHeight,
            ),
        );
      },
      options: CarouselOptions(
        autoPlay: true, // Iniciar carrossel automaticamente
        aspectRatio: 16 / 13,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      carouselController: _carouselController,
    );
  }
}
