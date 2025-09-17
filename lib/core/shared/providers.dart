// import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:fastfood/core/constants/map_api.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:flutter_google_maps_webservices/places.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider((ref) => Dio());
final hiveProvider = Provider((ref) => HiveDatabase());

final placesProvider = Provider(
  (ref) => GoogleMapsPlaces(apiKey: GoogleMapAPI.key),
);

final locationUriProvider = Provider.family((ref, String query) {
  Uri uri = Uri.https(
    'maps.googleapis.com',
    'maps/api/place/autocomplete/json',
    {"input": query, "key": GoogleMapAPI.key},
  );
  return uri;
});
