class Company {
  var name;
  var catchPhrase;
  var bs;

  Company.fromJson(Map<String, dynamic> companyMapJson)
      : name = companyMapJson['name'],
        catchPhrase = companyMapJson['catchPhrase'],
        bs = companyMapJson['bs'];

  @override
  String toString() {
    return 'Company{name: $name, catchPhrase: $catchPhrase, bs: $bs}';
  }
}
