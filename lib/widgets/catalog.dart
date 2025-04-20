class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "Classic T-Shirt",
      desc: "Soft cotton t-shirt with a relaxed fit.",
      price: 20,
      color: "#1E3A8A",
      image:
          "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });
}
