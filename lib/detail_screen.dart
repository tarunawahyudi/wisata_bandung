import 'package:flutter/material.dart';
import 'package:wisata_bandung/model/tourism_place.dart';
import 'package:wisata_bandung/pages/detail_mobile_page.dart';
import 'package:wisata_bandung/pages/detail_web_page.dart';

class DetailScreen extends StatelessWidget {

  final TourismPlace place;

  DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}
