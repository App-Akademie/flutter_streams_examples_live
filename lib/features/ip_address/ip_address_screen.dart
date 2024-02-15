import 'package:flutter/material.dart';
import 'package:flutter_streams_examples_live/features/ip_address/ip_address_repository.dart';

class IpAddressScreen extends StatefulWidget {
  const IpAddressScreen({super.key});

  @override
  State<IpAddressScreen> createState() => _IpAddressScreenState();
}

class _IpAddressScreenState extends State<IpAddressScreen> {
  // Dieses Repository sollte normalerweise von außen übergeben werden.
  final IpAddressRepository ipAddressRepository = IpAddressRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Ähnlich zu einem FutureBuilder :)
        // Man kann auch noch auf den snapshot.connectionState hören.
        // Außerdem auf snapshot.error reagieren.
        child: StreamBuilder(
          stream: ipAddressRepository.generateIPAddresses(),
          builder: (context, snapshot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("IP: ${snapshot.data?.address}"),
              ],
            );
          },
        ),
      ),
    );
  }
}
