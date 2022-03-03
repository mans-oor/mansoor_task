class CategoryModel {
  final String? image, km, oldPrice, newPrice, desc, off, tittleProduct;
  final int? id;

  CategoryModel(
      {this.image,
      required this.id,
      this.km,
      this.tittleProduct,
      this.desc,
      this.off,
      this.newPrice,
      this.oldPrice});
}

List categoryList = [
  CategoryModel(
      id: 1,
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6rLpp6LV-COgx0JhqZ0Eea9B6FZ5CpqDSPQ&usqp=CAU",
      km: "3 km",
      oldPrice: "00.00/",
      off: "00%",
      newPrice: "00.00/-",
      tittleProduct: "Tittle Product",
      desc: "Product Service"),
  CategoryModel(
      id: 2,
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6rLpp6LV-COgx0JhqZ0Eea9B6FZ5CpqDSPQ&usqp=CAU",
      km: "3 km",
      oldPrice: "00.00/",
      off: "00%",
      newPrice: "00.00/-",
      tittleProduct: "Tittle Product",
      desc: "Product Service"),
  CategoryModel(
      id: 3,
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6rLpp6LV-COgx0JhqZ0Eea9B6FZ5CpqDSPQ&usqp=CAU",
      km: "3 km",
      oldPrice: "00.00/",
      off: "00%",
      newPrice: "00.00/-",
      tittleProduct: "Tittle Product",
      desc: "Product Service"),
  CategoryModel(
      id: 4,
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6rLpp6LV-COgx0JhqZ0Eea9B6FZ5CpqDSPQ&usqp=CAU",
      km: "3 km",
      oldPrice: "00.00/",
      off: "00%",
      newPrice: "00.00/-",
      tittleProduct: "Tittle Product",
      desc: "Product Service"),
  CategoryModel(
      id: 5,
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6rLpp6LV-COgx0JhqZ0Eea9B6FZ5CpqDSPQ&usqp=CAU",
      km: "3 km",
      oldPrice: "00.00/",
      off: "00%",
      newPrice: "00.00/-",
      tittleProduct: "Tittle Product",
      desc: "Product Service"),
];
