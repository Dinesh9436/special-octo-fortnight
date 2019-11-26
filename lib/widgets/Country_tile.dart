import 'package:flutter/material.dart';
import '../models/Country.dart';

class CountryTile extends StatelessWidget {
  final Country _country;
  CountryTile(this._country);
  

  @override
  Widget build(BuildContext context) => Column(
    
    children: <Widget>[
      ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(_country.flag),
          ),
          title: Text(_country.name),
          subtitle: Text(_country.region),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Text(_country.capital);
          },
          selected: true,
        ),
      Divider()
    ],
  );
}
