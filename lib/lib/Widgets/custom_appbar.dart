import 'package:ecom_2/lib/Widgets/Helper_widgets.dart';
import 'package:ecom_2/lib/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
   const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: AppColor.primaryColor,
      child: Column(
        children: [
          addVerticalSpace(25.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "E SHOP",
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, color: AppColor.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.person, color: AppColor.white),
                      SizedBox(
                        width: 5.h,
                      ),
                      Icon(Icons.shopping_cart_outlined, color: AppColor.white),
                      SizedBox(
                        width: 5.h,
                      ),
                      Image.asset("assets/images/text.png",
                          height: 20.h, width: 20.w, color: AppColor.white),
                    ],
                  ),
                ],
              ),
            ],
          ),
          addVerticalSpace(10),
          Container(
            height: 40,
            alignment: Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Product',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(horizontal: 12)
              ),

            ),
          ),
        ],
      ).paddingOnly(right: 20,left: 20),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 40.h);
}
