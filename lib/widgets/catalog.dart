class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = [
  Item(
    id: "1",
    name: "Classic T-Shirt",
    desc: "Soft cotton t-shirt with a relaxed fit.",
    price: 20,
    color: "#1E3A8A",
    image: "https://images.unsplash.com/photo-1585386959984-a4155224c4c4",
  ),
];
