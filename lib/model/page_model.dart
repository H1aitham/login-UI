// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class PageModel {
  int id;
  String name;
  String species;
  String family;
  String habitat;
  String placeOfFound;
  String diet;
  String description;
  int wingspanCm;
  num weightKg;
  String image;

  PageModel(
      {required this.id,
      required this.name,
      required this.species,
      required this.family,
      required this.habitat,
      required this.placeOfFound,
      required this.diet,
      required this.description,
      required this.wingspanCm,
      required this.weightKg,
      required this.image});

  PageModel copyWith({
    int? id,
    String? name,
    String? species,
    String? family,
    String? habitat,
    String? placeOfFound,
    String? diet,
    String? description,
    int? wingspanCm,
    num? weightKg,
    String? image,
  }) {
    return PageModel(
      id: id ?? this.id,
      name: name ?? this.name,
      species: species ?? this.species,
      family: family ?? this.family,
      habitat: habitat ?? this.habitat,
      placeOfFound: placeOfFound ?? this.placeOfFound,
      diet: diet ?? this.diet,
      description: description ?? this.description,
      wingspanCm: wingspanCm ?? this.wingspanCm,
      weightKg: weightKg ?? this.weightKg,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'species': species,
      'family': family,
      'habitat': habitat,
      'place_of_found': placeOfFound,
      'diet': diet,
      'description': description,
      'wingspan_cm': wingspanCm,
      'weight_kg': weightKg,
      'image': image,
    };
  }

  factory PageModel.fromMap(Map<String, dynamic> map) {
    return PageModel(
       id: map['id'] as int? ?? 0,
      name: map['name'] as String? ?? '',
      species: map['species'] as String? ?? '',
      family: map['family'] as String? ?? '',
      habitat: map['habitat'] as String? ?? '',
      placeOfFound: map['place_of_found'] as String? ?? '',
      diet: map['diet'] as String? ?? '',
      description: map['description'] as String? ?? '',
      wingspanCm: map['wingspan_cm'] as int? ?? 0,
      weightKg: map['weight_kg'] as num? ?? 0,
      image: map['image'] as String? ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PageModel.fromJson(String source) =>
      PageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PageModel(id: $id, name: $name, species: $species, family: $family, habitat: $habitat, placeOfFound: $placeOfFound, diet: $diet, description: $description, wingspanCm: $wingspanCm, weightKg: $weightKg, image: $image)';
  }

  @override
  bool operator ==(covariant PageModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.species == species &&
        other.family == family &&
        other.habitat == habitat &&
        other.placeOfFound == placeOfFound &&
        other.diet == diet &&
        other.description == description &&
        other.wingspanCm == wingspanCm &&
        other.weightKg == weightKg &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        species.hashCode ^
        family.hashCode ^
        habitat.hashCode ^
        placeOfFound.hashCode ^
        diet.hashCode ^
        description.hashCode ^
        wingspanCm.hashCode ^
        weightKg.hashCode ^
        image.hashCode;
  }
}
