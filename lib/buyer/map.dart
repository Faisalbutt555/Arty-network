
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class Mapppin extends StatefulWidget {
  @override
  _MapppinState createState() => _MapppinState();
}

class _MapppinState extends State<Mapppin> {
  //Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    return Container(
child: _googlemaps(context),
      
    );
  }
}


Widget _googlemaps(BuildContext context) {
  return Container(
    child: GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
          target: LatLng(40.712776, -74.005974), zoom: 12),
      onMapCreated: (GoogleMapController controller) {
           //  _controller.complete(controller);
      },
      markers:
      {
        newYorkMarker,
      },
    ),
  );
}
Marker newYorkMarker = Marker(
  markerId: MarkerId("new york"),
  position: LatLng(40.742451, -74.005959),
  infoWindow: InfoWindow(
     title: "new york",
  ),
  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
);
