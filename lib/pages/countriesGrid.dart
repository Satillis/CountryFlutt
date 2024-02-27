import 'package:flutter/material.dart';
import 'package:countries/components/countryCard.dart';
import 'package:countries/components/countryData.dart';

class CountriesGrid extends StatelessWidget {
  const CountriesGrid({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Страны Африки'),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.9,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8),
            itemCount: countries.length,
            itemBuilder: (BuildContext context, int index)
            {
              return CountryCard(flag: countries[index].flag,name: countries[index].name,
                  size: countries[index].square);
            },

        ),
        //CountryCard(flag: countries[0].flag,name: countries[0].name,size: countries[0].square),
      ),
    );
  }
}
/*primary:  false,
            padding: const EdgeInsets.all(20),*/