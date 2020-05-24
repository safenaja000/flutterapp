import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class ShowMap extends StatefulWidget {
  final double lat, lng;
  final String date;
  ShowMap({Key key, this.lat, this.lng,this.date}) : super(key: key);
  @override
  _ShowMapState createState() => _ShowMapState();
}

class _ShowMapState extends State<ShowMap> {
  Set<Marker> markerHere() {
    return <Marker>[
      Marker(
          markerId: MarkerId("idHere"),
          position: LatLng(widget.lat, widget.lng)),
    ].toSet();
  }

  Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location เมื่อวันที่ ${widget.date}",style: TextStyle(fontSize: 15),),
      ),
      body: GoogleMap(
        markers: markerHere(),
        myLocationButtonEnabled: true,
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
            target: LatLng(widget.lat, widget.lng), zoom: 14.4746),
        onMapCreated: (controller) {},
      ),
    );
  }
}
