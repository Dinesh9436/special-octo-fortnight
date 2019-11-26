class Country {
 
  final String name;
  final String region;
  final String capital;
  final String flag;

  Country.fromJSON(Map<String, dynamic> jsonMap) :
    
    name = jsonMap['name'],
    region = jsonMap['region'],
    capital = jsonMap['capital'],
    flag = jsonMap['flag'];

}