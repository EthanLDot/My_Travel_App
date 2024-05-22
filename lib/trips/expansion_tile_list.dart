import 'package:flutter/material.dart';
import 'package:my_travel_app/trips/expansion_tile.dart';

class TripExpansionTileList extends StatelessWidget {
  const TripExpansionTileList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: <Widget>[
          TripExpansionTile(number: 1),
          TripExpansionTile(number: 2),
          TripExpansionTile(number: 3),
          TripExpansionTile(number: 4),
          TripExpansionTile(number: 5),
          TripExpansionTile(number: 6),
        ],
      ),
    );
  }
}
