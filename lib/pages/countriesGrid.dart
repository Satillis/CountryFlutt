import 'package:flutter/material.dart';
import 'package:countries/components/countryCard.dart';
import 'package:countries/components/countryData.dart';

class CountriesGrid extends StatelessWidget {
  const CountriesGrid({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Страны африки'),
      ),
      body: Container(
        child: CountryCard(flag: countries[0].flag,name: countries[0].name,size: countries[0].square),
      ),
    );
  }
}