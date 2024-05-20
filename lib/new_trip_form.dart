import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'New Trip',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextField(
            onChanged: (value) {
              setState(() {
                selectedCity = value;
              });
            },
            decoration: const InputDecoration(
              labelText: 'Search for a city',
              border: OutlineInputBorder(),
            ),
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
        ],
      ),
    );
  }
}
