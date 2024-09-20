class Coffee {
  final String name;
  final String price;
  final String image;
  final String subtitle;
  Coffee(
      {required this.name,
      required this.price,
      required this.image,
      required this.subtitle});
}

List<Coffee> coffeelist = [
  Coffee(
      name: 'Caffe Mocha',
      subtitle: 'Deep Foam',
      price: r'$ 4.53',
      image: 'assets/images/image1.png'),
  Coffee(
      name: 'Flat White',
      subtitle: 'Espresso',
      price: r'$ 3.53',
      image: 'assets/images/image2.png'),
  Coffee(
      name: 'Latte',
      subtitle: 'Depressoo',
      price: r'$ 2.53',
      image: 'assets/images/image3.png'),
];
