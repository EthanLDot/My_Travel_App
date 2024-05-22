import 'package:flutter/material.dart';
import 'package:my_travel_app/trips/new_trip_form.dart';

class TripExpansionTile extends StatefulWidget {
  final int number;

  const TripExpansionTile({
    super.key,
    required this.number,
  });

  @override
  State<TripExpansionTile> createState() => _TripExpansionTileState();
}

class _TripExpansionTileState extends State<TripExpansionTile> {
  String title = 'Trip';
  String subtitle = "None";
  bool isExpanded = false;
  Widget child = const NewTripForm();
  @override
  Widget build(BuildContext context) {
    String number = (widget.number).toString();
    return ExpansionTile(
      title: Text('Trip $number'),
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
