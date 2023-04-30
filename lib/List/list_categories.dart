// ignore: file_names
// ignore_for_file: camel_case_types, file_names

class List_categories {
  final String image;
  final String name;

  List_categories(
    this.image,
    this.name,
  );
}

// ignore: non_constant_identifier_names
List<List_categories> list_categories = [
  List_categories(
    "assets/image/tires.jpg",
    "Tires",
  ),
  List_categories(
    "assets/image/helmet.jpg",
    "Helmets",
  ),
  List_categories(
    "assets/image/gear.jpg",
    "Riding gear",
  ),
];
