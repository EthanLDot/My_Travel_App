import 'package:flutter/material.dart';
import 'package:my_travel_app/expansion_tile.dart';

class TripExpansionTileList extends StatelessWidget {
  const TripExpansionTileList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: <Widget>[
          TripExpansionTile(),
          TripExpansionTile(),
          TripExpansionTile(),
          TripExpansionTile(),
          TripExpansionTile(),
          TripExpansionTile(),
        ],
      ),
    );
  }
}
