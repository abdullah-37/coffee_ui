import 'package:coffee_app/constants/text_strins.dart';
import 'package:coffee_app/screens/homescreen/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CoffeeTypesList extends StatelessWidget {
  const CoffeeTypesList({
    super.key,
    required this.controller,
  });

  final ListController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        // shrinkWrap: true,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () => controller.onchange(index),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(
              () => Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 30,
                // width: 80,
                decoration: BoxDecoration(
                  color: index == controller.selectedindex.value
                      ? const Color.fromRGBO(198, 124, 78, 1)
                      : const Color.fromARGB(255, 219, 219, 219),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    MyTextStrings.scrollitemlist[index],
                    style: TextStyle(
                        color: index == controller.selectedindex.value
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
