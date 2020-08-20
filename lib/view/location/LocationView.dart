import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';


class LocationView extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _LocationViewState createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  Completer<GoogleMapController> googleMapController = Completer();
  static const LatLng centre = const LatLng(11.2324, 76.0518);
  MapType mapType = MapType.normal;
  final Set<Marker> _markers = {};
  LatLng _lastMapPostion = centre;
  String _locationLatLong = "";

  Position position = null;
  void requestPermissionLocation() async{
    final currentPosition = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(currentPosition);
    setState(() {
      position = currentPosition;
    });
  }


  void onMapCreated(GoogleMapController controller){
    googleMapController.complete(controller);

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Map'),
          backgroundColor: Colors.teal,
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: onMapCreated,
              initialCameraPosition: CameraPosition(
                target: centre,
                zoom: 20.0,
              ),
              mapType: mapType,
              markers: _markers,
              onCameraMove: _onCameraMovie,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: <Widget>[
                    FloatingActionButton(
                      backgroundColor: Colors.teal,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      onPressed: onPressedButton,
                      child: Icon(Icons.map,size: 36,),
                    ),
                    SizedBox(height: 20,),
                    FloatingActionButton(
                      backgroundColor: Colors.redAccent,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      onPressed: onAddMarkerButtonPressed,
                      child: Icon(Icons.add_location,size: 36,),
                    ),
                    SizedBox(height: 20,),

                    FloatingActionButton(
                      backgroundColor: Colors.deepPurple[200],
                      onPressed: (){
                        requestPermissionLocation();
                      },
                    )
                  ],
                ),
              ),
            ),
//            Text(
//              position.toString() == null ? "" : position.toString() ,
//            ),
          ],
        ),

//        body:Column(
//            crossAxisAlignment: CrossAxisAlignment.center,
//            children: <Widget>[
//              Padding(
//                  padding: const EdgeInsets.all(16.0),
//                  child: Center(
//                    child: new Text(
//                        "Requesting Location Permission...",
//                        textAlign: TextAlign.center
//                    ),
//                  )
//              ),
//              Padding(
//                padding: const EdgeInsets.symmetric(vertical: 16.0),
//                child: RaisedButton(
//                    onPressed: () {
//                      requestPermissionLocation();
//                    },
//                    child: Text('Get Location Permission'),
//                    color: Colors.green
//                ),
////              ),
////              Center(
////                child: Text(position.toString()),
//              )
//            ]
//        ),
      ),
    );
  }
  void onPressedButton(){
    setState(() {
      mapType = mapType == MapType.normal ? MapType.satellite : MapType.normal;
    });
  }
  void _onCameraMovie(CameraPosition cameraPosition){
    _lastMapPostion = cameraPosition.target;
  }
  void onAddMarkerButtonPressed(){
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(_lastMapPostion.toString()),
        position: _lastMapPostion,
        infoWindow: InfoWindow(
            title: "Really cool place",
            snippet: "% star rating"
        ),
        icon: BitmapDescriptor.defaultMarker,

      ));
    });

  }
}



