import 'package:coffee_app/constants/product_detail.dart';
import 'package:coffee_app/screens/homescreen/controller.dart';
import 'package:coffee_app/screens/homescreen/custom%20widgets/coffeetypelistvertical.dart';
import 'package:coffee_app/screens/homescreen/custom%20widgets/home_header.dart';
import 'package:coffee_app/screens/item_detail_screen/item_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ListController controller = Get.put(ListController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // First blue container
            Column(
              children: [
                // Home Header
                const HomeHeader(),
                const SizedBox(height: 70),

                // Vertical cofee type list
                CoffeeTypesList(controller: controller),
                // const ProductsGridView()

                // Products Grid View
                GridView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: coffeelist.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // mainAxisSpacing: 15,
                    // crossAxisSpacing: 15,
                    childAspectRatio: 0.68,
                  ),
                  itemBuilder: (_, index) => GestureDetector(
                    onTap: () => Get.to(() => DetailScreen(
                          coffee: coffeelist[index],
                        )),
                    child: SizedBox(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(7),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 229, 229, 229),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: Hero(
                                      // transitionOnUserGestures: true,
                                      tag: coffeelist[index].image,
                                      child: Image.asset(
                                        height: 150,
                                        coffeelist[index].image,
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                const SizedBox(height: 10),
                                Text(coffeelist[index].name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    )),
                                Text(
                                  coffeelist[index].subtitle,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(0.4),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      coffeelist[index].price,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const Spacer(),
                                    // Icon Filter
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              198, 124, 78, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Icon(
                                        Iconsax.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //Banner  Card
            Positioned(
              top: 200,
              right: 50,
              left: 50,
              // bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/Banner 1.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
