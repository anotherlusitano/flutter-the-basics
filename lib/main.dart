import 'package:flutter/material.dart';
import 'location_detail.dart';
import 'mocks/mock_location.dart';

void main() {
  final mockLocation = MockLocation.fetchAny();

  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocationDetail(mockLocation),
    ),
  );
}
