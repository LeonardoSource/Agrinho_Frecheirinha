import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Escola extends StatefulWidget {
  const Escola({super.key});

  @override
  State<Escola> createState() => _EscolaState();
}

class _EscolaState extends State<Escola> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: 
        FlutterMap(
        options: MapOptions(
          center: LatLng(51.509364, -0.128928),
          zoom: 9.2,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
        ],
  ),
    );
}
}