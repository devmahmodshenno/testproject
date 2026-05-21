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
      width: 200,
      decoration: BoxDecoration(
        color: allWidgetBackgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset(widget.imagePath, fit: BoxFit.cover),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert_outlined),
                      iconSize: 15,
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
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.price,
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      Text(
                        widget.availability,
                        style: TextStyle(color: Colors.grey.shade600),
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: btnEditFastColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Text("تعديل سريع"),
                          Icon(Icons.edit, size: 15, color: Colors.grey.shade600)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
