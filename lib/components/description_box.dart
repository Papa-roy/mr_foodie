import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
      ),
        padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                Column(
                  children: [
                    Text('Ksh 150'),
                    Text('Delivery Fee'),
                  ],
                ),
                Column(
                  children: [
                    Text('15-30 min'),
                    Text('Delivery Time'),
                  ],
                )
              ],
               
            )
          
      
    );
  }
}