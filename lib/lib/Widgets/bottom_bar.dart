import 'package:ecom_2/lib/View/home_screen.dart';
import 'package:ecom_2/lib/view/cart.dart';
import 'package:ecom_2/lib/view/profile.dart';
import 'package:ecom_2/lib/view/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/color.dart';


Widget bottomBar({context, index}) {
  return Container(
      width: Get.width,
      height: 50.h,
      color: AppColor.primaryColor,
      padding: const EdgeInsets.only(top: 0, bottom: 2),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Get.offAll(() => HomeScreen(), transition: Transition.fadeIn);
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    index == 0
                        ? Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(61, 231, 231, 231),
                            offset: Offset(0, 4),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(Icons.home,color: AppColor.black,)
                      ),
                    )
                        :Center(
                          child: Icon(Icons.home,color: AppColor.white,)
                        ),
                    index == 0
                        ?Text("Home",style: TextStyle(color: AppColor.black,fontSize: 12),)
                        :Text("Home",style: TextStyle(color: AppColor.white,fontSize: 12),)
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            child: InkWell(
              onTap: () {
                Get.offAll(() => SearchScreen(), transition: Transition.fade);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  index == 1
                      ? Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(61, 231, 231, 231),
                          offset: Offset(0, 4),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Center(
                      child:Icon(Icons.search,color: AppColor.black)
                    ),
                  ) //categoryIcon
                      :
                  Center(
                      child: Icon(Icons.search,color: AppColor.white,)),
                  index == 1
                      ?Text("Search",style: TextStyle(color: AppColor.black,fontSize: 12),)
                      :Text("Search",style: TextStyle(color: AppColor.white,fontSize: 12),)
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Get.offAll(() => CartScreen(), transition: Transition.rightToLeft);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  index == 2
                      ? Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(61, 231, 231, 231),
                          offset: Offset(0, 4),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Icon(Icons.shopping_bag_outlined,color: AppColor.black)
                    ),
                  )
                      :Center(child:Icon(Icons.shopping_bag_outlined,color: AppColor.white,)),
                  // SvgPicture.asset(AppNavBarIcons.cartIcon,
                  //         fit: BoxFit.scaleDown),
                  index == 2
                      ?Text("Cart",style: TextStyle(color: AppColor.black,fontSize: 12),)
                      :Text("Cart",style: TextStyle(color: AppColor.white,fontSize: 12),)
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Get.offAll(() => ProfileScreen(), transition: Transition.upToDown);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  index == 3
                      ? Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(61, 231, 231, 231),
                          offset: Offset(0, 4),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Icon(Icons.person,color: AppColor.black)
                  )
                      : Center(
                          child:Icon(Icons.person_outlined,color: AppColor.white,)),
                  // SvgPicture.asset(AppNavBarIcons.heartIcon,
                  //         fit: BoxFit.scaleDown),
                  index == 3
                      ?Text("Profile",style: TextStyle(color: AppColor.black,fontSize: 12),)
                      :Text("Profile",style: TextStyle(color: AppColor.white,fontSize: 12),)

                ],
              ),
            ),
          ),
        ],
      ));
}
