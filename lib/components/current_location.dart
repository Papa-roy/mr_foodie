import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Your Location"),
              content: const TextField(
                decoration: InputDecoration(hintText: "Search address.."),
              ),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                  ),

                   MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Save'),
                  )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver",
            style: TextStyle(color: Colors.white),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Text(
                  "P.O. Box 12345-00100, Nairobi, Kenya",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
