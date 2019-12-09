class Record {
  String name;
  String address;
  String contact;
  String photo;
  String url;

  Record({
    this.name = name,
    this.address = address,
    this.contact = contact,
    this.photo = photo,
    this.url = url,
});

  // This parses given Json string and return record objects. factory constructor can return objects
  factory Record.fromJson(Map<String, dynamic> json){
    return new Record(
      name: json['name'],
      address: json['address'],
      contact: json['contact'],
      photo: json['photo'],
      url: json['url']
    );
  }
}