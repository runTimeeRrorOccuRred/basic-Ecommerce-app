class Catalog
{
  //static List<Item> items;
  //Item getById(int id)=> items.firstWhere((element) => element.id)==id,orEls
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;
  final String info;
  Catalog(
      {
        required this.id,
        required this.name,
        required this.desc,
        required this.price,
        required this.color,
        required this.image,
        required this.info
      }
      );
  factory Catalog.fromMap(Map<String,dynamic> map)
  {
    return Catalog(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      color: map["color"],
      price: map["price"],
      image: map["image"],
      info:  map["info"],
    );
  }

  toMap()=>
      {
        "id":id,
        "name": name,
        "color":color,
        "desc": desc,
        "price":price,
        "image":image,
        "info":info
      };
  static List<Catalog> items= [
    // Catalog(
    //     id: 1,
    //     name: "Gt2",
    //     desc: "Realme GT2",
    //     color: "Paper White",
    //     image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0WqztizlHAMY6-nrp6W-vcv_7w7XctV2SQaOzLgoahA&s",
    //     price: 35000
    // ),
    //   Catalog(
    //       id:2,
    //       name: "iq Neo6",
    //       desc: "Iq neo6 Flagship Killer",
    //       price: 30000, color: "color",
    //       image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-nuWYLmJjnoybb5Dmt0w4IB2nEtKySwIyqknhzoswpw&s")
  ];
}
