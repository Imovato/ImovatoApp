class Properties {
  final String area;
  final String name;
  final String neighborhood;
  final String codAddress;
  final String city;
  final String description;
  final String address;
  final String state;
  final String price;
  final String number;
  final String block;
  final String rooms;
  final String amount;
  final List images;

  const Properties({
    required this.rooms,
    required this.block,
    required this.area,
    required this.name,
    required this.neighborhood,
    required this.codAddress,
    required this.city,
    required this.description,
    required this.address,
    required this.state,
    required this.price,
    required this.number,
    required this.amount,
    required this.images,
  });

  factory Properties.fromJson(Map<String, dynamic> json) {
    return Properties(
      rooms: json["rooms"].toString() ?? '',
      block: json['block'] ?? '',
      area: json['area'].toString(),
      name: json['name'],
      neighborhood: json['neighborhood'],
      codAddress: json['codAddress'],
      city: json['city'],
      description: json['description'],
      address: json['adress'],
      state: json['state'],
      price: json['price'].toString(),
      number: json['number'].toString(),
      amount: json['amount'].toString(),
      images: json['images'] ?? [],
    );
  }
}
