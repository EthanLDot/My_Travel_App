import 'package:flutter/material.dart';
import 'package:my_travel_app/new_trip_form.dart';

class TripExpansionTile extends StatefulWidget {
  const TripExpansionTile({super.key});

  @override
  State<TripExpansionTile> createState() => _TripExpansionTileState();
}

class _TripExpansionTileState extends State<TripExpansionTile> {
  String title = "Trip";
  String subtitle = "None";
  bool isExpanded = false;
  Widget child = const NewTripForm();
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(
        isExpanded ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
      ),
      onExpansionChanged: (bool expanded) {
        setState(() {
          isExpanded = expanded;
        });
      },
      children: <Widget>[
        child,
      ],
    );
  }
}
