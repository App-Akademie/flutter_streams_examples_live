import 'package:flutter/material.dart';
import 'package:flutter_streams_examples_live/features/location/generate_locations.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Ähnlich zu einem FutureBuilder :)
        // Man kann auch noch auf den snapshot.connectionState hören.
        // Außerdem auf snapshot.error reagieren.
        child: StreamBuilder(
          stream: generateLocations(),
          builder: (context, snapshot) {
            final latitude = snapshot.data?.latitude;
            final longitude = snapshot.data?.longitude;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("lat: $latitude"),
                Text("long: $longitude"),
              ],
            );
          },
        ),
      ),
    );
  }
}
