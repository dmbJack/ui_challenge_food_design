class ProductModel {
  final String name;
  final String image;
  final String price;
  final List<String> userImage;
  final String kCal;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.userImage,
    required this.kCal,
  });

  static List<ProductModel> products = [
    ProductModel(
      name: 'Salade',
      image: 'assets/food-1.png',
      price: '11',
      userImage: ['assets/user-1.jpg'],
      kCal: '120',
    ),
    ProductModel(
      name: 'Crudite',
      image: 'assets/food-1.png',
      price: '21',
      userImage: ['assets/user-1.jpg'],
      kCal: '88',
    ),
    ProductModel(
      name: 'Viande',
      image: 'assets/food-1.png',
      price: '25',
      userImage: [
        'assets/user-1.jpg',
        'assets/user-2.jpg',
        'assets/user-3.jpg'
      ],
      kCal: '200',
    )
  ];
}

