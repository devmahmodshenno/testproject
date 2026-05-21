import 'package:flutter/material.dart';

class CustomDrawButton extends StatefulWidget {
  final String selectValue;
  final List<String> itemList;
  CustomDrawButton(
      {super.key, required this.selectValue, required this.itemList});

  @override
  State<CustomDrawButton> createState() => _CustomDrawButtonState();
}

class _CustomDrawButtonState extends State<CustomDrawButton> {
  String? selectedValue;
  List<String> itemList = [];
  void initState() {
    super.initState();
    selectedValue = widget.selectValue;
    itemList = widget.itemList;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      width: 180,
      menuStyle: MenuStyle(
        minimumSize: WidgetStatePropertyAll(
          Size(180, 0),
        ),
        maximumSize: WidgetStatePropertyAll(
          Size(180, 300),
        ),
        backgroundColor: WidgetStatePropertyAll(Colors.white),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      initialSelection: selectedValue,
      onSelected: (item) => setState(() {
        selectedValue = item;
      }),
      dropdownMenuEntries: itemList
          .map((item) => DropdownMenuEntry(
                value: item,
                label: item,
              ))
          .toList(),
    );
  }
}
