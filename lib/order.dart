import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  final Completer<GoogleMapController> _controller = Completer();

  static LatLng sourceLocation = LatLng(12.989802, 79.971097);
  static LatLng destination = LatLng(12.989802, 79.971097);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(

    title:const Text(
  "Mine Owner",
  style: TextStyle(
  color: Colors.black,
  fontSize: 25,
  fontWeight: FontWeight.w600,
  ),
  ),
  //centerTitle: true,
  backgroundColor: Colors.white,
  ),

  body: GoogleMap(initialCameraPosition: CameraPosition(target: sourceLocation, zoom: 13),
    markers: {
      Marker(
        markerId: MarkerId("source"),
        position: sourceLocation,
      ),
      Marker(
        markerId: MarkerId("source"),
        position: destination,
      )
    },
  ),



    );
  }
}
