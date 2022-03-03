class BestTittleModel {
  final String? image, km, oldPrice, newPrice, desc, off, tittleProduct;
  final int? id;

  BestTittleModel(
      {this.image,
      required this.id,
      this.km,
      this.tittleProduct,
      this.desc,
      this.off,
      this.newPrice,
      this.oldPrice});
}

List bestTittleList = [
  BestTittleModel(
      id: 1,
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6rLpp6LV-COgx0JhqZ0Eea9B6FZ5CpqDSPQ&usqp=CAU",
      km: "3 km",
      oldPrice: "00.00/",
      off: "00%",
      newPrice: "00.00/-",
      tittleProduct: "Tittle Product",
      desc: "Product Service"),
  BestTittleModel(
      id: 2,
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6rLpp6LV-COgx0JhqZ0Eea9B6FZ5CpqDSPQ&usqp=CAU",
      km: "3 km",
      oldPrice: "00.00/",
      off: "00%",
      newPrice: "00.00/-",
      tittleProduct: "Tittle Product",
      desc: "Product Service"),
  BestTittleModel(
      id: 3,
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6rLpp6LV-COgx0JhqZ0Eea9B6FZ5CpqDSPQ&usqp=CAU",
      km: "3 km",
      oldPrice: "00.00/",
      off: "00%",
      newPrice: "00.00/-",
      tittleProduct: "Tittle Product",
      desc: "Product Service"),
];
