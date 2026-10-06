class Pokemon {
  final String name;
  final String image;
  final String type;

  const Pokemon({
    required this.name,
    required this.image,
    required this.type,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json){
    return Pokemon(
      name: json['name'] as String, 
      image: json['sprites']?['versions']?['generation-v']?['black-white']?['animated']?['front_default'] as String,
      type: json['types']?[0]?['type']['name']
    );
  }
}