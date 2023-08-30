import 'package:flutter/material.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

class BleStatusScreen extends StatelessWidget {
  const BleStatusScreen({required this.status, Key? key}) : super(key: key);

  final BleStatus status;

  String determineText(BleStatus status) {
    switch (status) {
      case BleStatus.unsupported:
        return "This device does not support Bluetooth";
      case BleStatus.unauthorized:
        return "Please authorize this app for using Bluetooth and Location";
      case BleStatus.poweredOff:
        return "Bluetooth is powered off";
      case BleStatus.locationServicesDisabled:
        return "Please enable Location services";
      case BleStatus.ready:
        return "Bluetooth is ready";
      default:
        return "Fetching Bluetooth status...";
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Text(
            determineText(status),
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}
