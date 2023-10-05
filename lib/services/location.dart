import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location{
  late double longitude;
  late double latitude;

  Future getCurrentLocation() async{
    try {
      LocationPermission permission;
      permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
      print(position);
    } catch (e) {
      print(e);
    }
  }


}