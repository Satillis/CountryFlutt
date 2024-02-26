import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget{
  const CountryCard({super.key, required this.flag, required this.name, required this.size});

  final String flag;
  final String name;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      constraints: const BoxConstraints(maxWidth: 512,maxHeight: 2048),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(flag),
          Text(name),
          Text("Размер: " + size + "тыс. км^2"),
        ],
      ),
    );
  }
}