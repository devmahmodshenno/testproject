import 'package:flutter/material.dart';
import 'package:testuiproject/constans.dart';
import 'package:testuiproject/core/assetsdata.dart';

class CustomCardWidget extends StatefulWidget {
  final String imagePath;
  final String title;
  final String description;
  final String price;
  final String availability;
  const CustomCardWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.price,
      required this.availability,
      required this.imagePath});

  @override
  State<CustomCardWidget> createState() => _CustomCardWidgetState();
}

class _CustomCardWidgetState extends State<CustomCardWidget> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: allWidgetBackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 190,
            padding: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        widget.imagePath,
                        fit: BoxFit.cover,
                        width: 145,
                        height: 145,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 214, 213, 213),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert_outlined),
                        iconSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.price,
                        style: const TextStyle(fontWeight: FontWeight.w900),
                      ),
                      Text(
                        widget.availability,
                        style: TextStyle(color: Colors.grey.shade600),
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 22,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: btnEditFastColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      icon: Icon(Icons.edit,
                          size: 15, color: Colors.grey.shade600),
                      label: const Text(
                        "تعديل سريع",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.black),
                      ),
                      iconAlignment: IconAlignment.end,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
