import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 280,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(49, 49, 49, 1),
        gradient: LinearGradient(
          colors: [Color(0xff111111), Color(0xff303030)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Text(
            'Location',
            style:
                TextStyle(fontSize: 12, color: Colors.white.withOpacity(0.5)),
          ),
          const Row(
            children: [
              Text(
                'Bilzen, Tanjungbalai',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              SizedBox(width: 5),
              Icon(
                Iconsax.arrow_down_14,
                color: Colors.white,
                size: 17,
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              // Search bar
              Container(
                height: 60,
                width: 270,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(42, 42, 42, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      // Search icon
                      const Icon(
                        Iconsax.search_normal,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Search coffee',
                        style: TextStyle(
                            fontSize: 15, color: Colors.white.withOpacity(0.4)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 15),
              // Icon Filter
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(198, 124, 78, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: const Icon(Iconsax.sort),
              )
            ],
          )
        ],
      ),
    );
  }
}
