import 'package:flutter/material.dart';
import 'package:my_travel_app/new_trip_form.dart';

class TripExpansionTileList extends StatefulWidget {
  const TripExpansionTileList({super.key});

  @override
  State<TripExpansionTileList> createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<TripExpansionTileList> {
  final List<bool> _customTileExpanded = List.filled(6, false);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ExpansionTile(
            title: const Text('Trip 1'),
            subtitle: const Text('None'),
            trailing: Icon(
              _customTileExpanded[0]
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              NewTripForm(),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded[0] = expanded;
              });
            },
          ),
          ExpansionTile(
            title: const Text('Trip 2'),
            subtitle: const Text('None'),
            trailing: Icon(
              _customTileExpanded[1]
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(title: Text('This is tile number 2')),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded[1] = expanded;
              });
            },
          ),
          ExpansionTile(
            title: const Text('Trip 3'),
            subtitle: const Text('None'),
            trailing: Icon(
              _customTileExpanded[2]
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(title: Text('This is tile number 2')),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded[2] = expanded;
              });
            },
          ),
          ExpansionTile(
            title: const Text('Trip 4'),
            subtitle: const Text('None'),
            trailing: Icon(
              _customTileExpanded[3]
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(title: Text('This is tile number 2')),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded[3] = expanded;
              });
            },
          ),
          ExpansionTile(
            title: const Text('Trip 5'),
            subtitle: const Text('None'),
            trailing: Icon(
              _customTileExpanded[4]
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(title: Text('This is tile number 2')),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded[4] = expanded;
              });
            },
          ),
          ExpansionTile(
            title: const Text('Trip 6'),
            subtitle: const Text('None'),
            trailing: Icon(
              _customTileExpanded[5]
                  ? Icons.arrow_drop_down_circle
                  : Icons.arrow_drop_down,
            ),
            children: const <Widget>[
              ListTile(title: Text('This is tile number 2')),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded[5] = expanded;
              });
            },
          ),
        ],
      ),
    );
  }
}
