import 'package:coffee_app/constants/product_detail.dart';
import 'package:coffee_app/screens/homescreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key, required this.coffee});
  final Coffee coffee;
  final List<String> sizes = ['S', 'M', 'L'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () => Get.to(() => const HomeScreen()),
            child: const Icon(Iconsax.arrow_left_2)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Iconsax.heart),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Hero(
                    // transitionOnUserGestures: true,
                    tag: coffee.image,
                    child: Image(
                      image: AssetImage(
                        coffee.image,
                      ),
                    ),
                  )),
              const SizedBox(height: 20),
              Text(coffee.name,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  )),
              Text(
                'Ice/Hot',
                style: TextStyle(color: Colors.black.withOpacity(0.4)),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Icon(
                    size: 38,
                    Iconsax.star1,
                    color: Colors.yellow,
                  ),
                  const Text(
                    '4.0',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '(204)',
                    style: TextStyle(
                        fontSize: 15, color: Colors.black.withOpacity(0.4)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(
                height: 5,
              ),
              const SizedBox(height: 20),
              const Text("Description",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
              Text(
                'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More',
                style: TextStyle(color: Colors.black.withOpacity(0.4)),
              ),
              const SizedBox(height: 20),
              const Text("Size",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(height: 20),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  // itemExtent: 1,
                  scrollDirection: Axis.horizontal,

                  itemCount: 3,

                  itemBuilder: (_, index) => SizeContainer(
                    sizes: sizes[index],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({
    super.key,
    required this.sizes,
  });
  final String sizes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(198, 124, 78, 1),
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          sizes,
          style: const TextStyle(fontSize: 18),
        )),
      ),
    );
  }
}
