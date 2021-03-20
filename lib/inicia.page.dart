import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller.page.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class IniciatPage extends StatefulWidget {
  @override
  _IniciatPageState createState() => _IniciatPageState();
}

class _IniciatPageState extends State<IniciatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(-2.5276041008909473, -44.25520529575539),
          zoom: 17,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
        ],
      ),
    );
  } 
}
