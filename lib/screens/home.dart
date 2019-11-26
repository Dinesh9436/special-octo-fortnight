import 'dart:async';

import 'package:flutter/material.dart';
import '../repository/country_repository.dart';
import '../models/Country.dart';
import '../widgets/Country_tile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Country> _countries = <Country>[];

  @override
  void initState() {
    super.initState();
    listenForCountries();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    
    appBar: AppBar(
      centerTitle: true,
      title: Text('Countries and Capitals '),
    ),
    body: ListView.builder(
      itemCount: _countries.length,
      itemBuilder: (context, index) => CountryTile(_countries[index]),
    ),
  );

  void listenForCountries() async {
    final Stream<Country> stream = await getCountries();
    stream.listen((Country cName) =>
      setState(() =>  _countries.add(cName))
    );
  }
}

