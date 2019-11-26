import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/Country.dart';

Future<Stream<Country>> getCountries() async {
  final String url = 'https://restcountries.eu/rest/v2/all';

  final client = new http.Client();
  final streamedRest = await client.send(
      http.Request('get', Uri.parse(url))
  );

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .expand((data) => (data as List))
      .map((data) => Country.fromJSON(data));
}