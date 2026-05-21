import 'package:flutter/material.dart';
import 'package:testuiproject/constans.dart';

class CustomTextformfiled extends StatelessWidget {
  const CustomTextformfiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
            textAlign: TextAlign.right,
            decoration:  InputDecoration(
              filled: true,
              fillColor: allWidgetBackgroundColor,
              hintText: "البحث",
              hintStyle: TextStyle(fontSize: 20),
              suffixIcon: Icon(Icons.search),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
  }
}