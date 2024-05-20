import 'package:flutter/material.dart';
import 'package:my_travel_app/trips/expansion_tile_list.dart';

class PlannedTripsPage extends StatelessWidget {
  const PlannedTripsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: TripExpansionTileList(),
    ));
  }
}
