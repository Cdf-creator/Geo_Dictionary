import 'package:flutter/material.dart';

class Terminology {
  final String geoTerm;
  final String description;
  final String imageUrl;
  final String country;
  final String location;
  final String id;

  const Terminology({
    @required this.geoTerm,
    @required this.description,
    @required this.imageUrl,
    @required this.country,
    @required this.location,
    @required this.id,
  });
}
