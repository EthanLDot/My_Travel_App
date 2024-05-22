import 'package:flutter/material.dart';
import 'package:my_travel_app/data/DatabaseManager.dart';
import 'package:searchfield/searchfield.dart';

class NewTripForm extends StatefulWidget {
  const NewTripForm({super.key});
  @override
  State<NewTripForm> createState() => _NewTripFormState();
}

class _NewTripFormState extends State<NewTripForm> {
  String selectedCity = '';
  int selectedDuration = 1;
  int selectedBudget = 100;

  final List<int> durations =
      List<int>.generate(30, (i) => i + 1); // 1 to 30 days
  final List<int> budgets =
      List<int>.generate(20, (i) => (i + 1) * 100); // $100 to $2000
  final formKey = GlobalKey<FormState>();
  List<String> tripNamesList = [];
  @override
  void initState() {
    super.initState();
    fetchDatabaseList();
  }

  fetchDatabaseList() async {
    dynamic resultant = await DatabaseManager().getTripsList();
    if (resultant != null) {
      setState(() {
        tripNamesList = resultant;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(children: <Widget>[
            // TextFormField(
            //     decoration: const InputDecoration(
            //       labelText: 'Search for a city',
            //       border: OutlineInputBorder(),
            //     ),
            //     // ignore: body_might_complete_normally_nullable
            //     validator: (value) {
            //       if (value == null || value.trim().isEmpty) {
            //         return 'City required';
            //       }
            //     }),
            SearchField(
              hint: 'Select a City',
              // initialValue: SearchFieldListItem<String>('ABC'),
              suggestions:
                  tripNamesList.map(SearchFieldListItem<String>.new).toList(),
              suggestionState: Suggestion.expand,
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<int>(
              value: selectedDuration,
              onChanged: (value) {
                setState(() {
                  selectedDuration = value!;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Set your trip duration (in days)',
                border: OutlineInputBorder(),
              ),
              items: durations.map((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(value.toString()),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<int>(
              value: selectedBudget,
              onChanged: (value) {
                setState(() {
                  selectedBudget = value!;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Set your trip budget (USD)',
                border: OutlineInputBorder(),
              ),
              items: budgets.map((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text('\$${value.toString()}'),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  // print("This form is valid");
                }
              },
              child: const Text('Submit'),
            ),
          ]),
        ));
  }
}
