import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testuiproject/constans.dart';
import 'package:testuiproject/core/assetsdata.dart';
import 'package:testuiproject/feature/home/data/presentaion/view_model/custom_card_widget.dart';
import 'package:testuiproject/feature/home/data/presentaion/view_model/custom_textFormFiled.dart';
import 'package:testuiproject/feature/home/data/presentaion/view_model/drowbutton.dart';

class HomeBody extends StatefulWidget {
  HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<String> itemList1 = ["الأقدم", "المرتبة", "الأحدث"];
  String selectedValue1 = 'الأحدث';

  List<String> itemList2 = ["الأعلى تقييم", "الأكثر مبيعا", "كل التصنيفات"];
  String selectedValue2 = "كل التصنيفات";

  List<String> itemList3 = ["محجوز", "مسترد", "كل الحالات"];
  String selectedValue3 = "كل الحالات";

  List<String> itemList4 = ["كل المخزون", "المفضلة", "المخزنة"];
  String selectedValue4 = "كل المخزون";
  // ListView builder
  List<Map<String, String>> products = [
    {
      "imagePath": Assetsdata.product1,
      "title": "Pastart طين إسباني طبيعي 10 كجم",
      "description": "ألوان خزرف قليز",
      "price": "119.00 ر.س",
      "availability": "متوفر : 1"
    },
    {
      "imagePath": Assetsdata.product2,
      "title": "Pastart طين إسباني طبيعي 10 كجم",
      "description": "ألوان خزرف قليز",
      "price": "119.00 ر.س",
      "availability": "متوفر : 1"
    },
    {
      "imagePath": Assetsdata.product3,
      "title": "Pastart طين إسباني طبيعي 10 كجم",
      "description": "ألوان خزرف قليز",
      "price": "119.00 ر.س",
      "availability": "متوفر : 1"
    },
  ];
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homebackgroundColor,
      body: Container(
        padding: EdgeInsets.only(top: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "منتجاتي   ",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
            ),
         
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                color: allWidgetBackgroundColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  CustomTextformfiled(),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomDrawButton(
                              selectValue: selectedValue1, itemList: itemList1),
                          CustomDrawButton(
                              selectValue: selectedValue2, itemList: itemList2),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomDrawButton(
                              selectValue: selectedValue3, itemList: itemList3),
                          CustomDrawButton(
                              selectValue: selectedValue4, itemList: itemList4),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 450,
              child: GridView.builder(
                itemCount: products.length, 
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 10, 
                  mainAxisSpacing: 10, 
                  childAspectRatio: 0.5,
                ),
                itemBuilder: (context, index) {
                  return CustomCardWidget(
                    imagePath: products[index]["imagePath"]!,
                    title: products[index]["title"]!,
                    description: products[index]["description"]!,
                    price: products[index]["price"]!,
                    availability: products[index]["availability"]!,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
