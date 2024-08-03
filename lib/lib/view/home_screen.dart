import 'package:ecom_2/lib/Widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../Widgets/Helper_widgets.dart';
import '../Widgets/bottom_bar.dart';
import '../constant/color.dart';
import '../controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final ProductController controller = Get.put(ProductController());
  List<Map<String, dynamic>> product = [
    {
      "image": "assets/images/cat.jpg",
      "name": "Beauty",
    },
    {
      "image": "assets/images/product_1.jpg",
      "name": "Fashion",
    },
    {
      "image": "assets/images/kids_1.jpg",
      "name": "Kids",
    },
    {
      "image": "assets/images/items_3.jpg",
      "name": "Mens",
    },
    {
      "image": "assets/images/pinkkurti.jpg",
      "name": "Women",
    },
    {
      "image": "assets/images/items_3.jpg",
      "name": "Mens",
    },
  ];
  List<Map<String, dynamic>> product_3 = [
    {
      "image": "assets/images/image_3.jpg",
      "name": "Beauty",
      "name":"Applae Watch Series 7",
      "price": "5000",
      "off":"10"
    },
    {
      "image": "assets/images/image_3.jpg",
      "name": "Fashion",
      "name":"Applae Watch Series 7",
      "price": "4000",
      "off":"10"
    },
    {
      "image": "assets/images/image_3.jpg",
      "name": "Kids",
      "name":"Applae Watch Series 7",
      "price": "3000",
      "off":"20"
    },
    {
      "image": "assets/images/image_3.jpg",
      "name": "Kids",
      "name":"Applae Watch Series 7",
      "price": "2000",
      "off":"20"
    },

  ];
  RxList<Map<String, dynamic>> product_2 = [
    {
      "name": "   Smart watch",
    },
    {
      "name": "Casio",
    },
    {
      "name": "Tissot",
    },
    {
      "name": "Seiko",
    },
  ].obs;
  RxInt isSelected = (-1).obs;
  List<Map<String, dynamic>> categories = [
    {
      "image": "assets/images/bea.jpg",
      "name": "Beauty",
    },
    {
      "image": "assets/images/pinkkurti.jpg",
      "name": "Fashion",
    },
    {
      "image": "assets/images/kids_1.jpg",
      "name": "Kids",
    },
    {
      "image": "assets/images/items_3.jpg",
      "name": "Mens",
    },
    {
      "image": "assets/images/bea.jpg",
      "name": "Womens",
    },
    {
      "image": "assets/images/bea.jpg",
      "name": "Mens",
    },
    {
      "image": "assets/images/bea.jpg",
      "name": "Mens",
    },
    {
      "image": "assets/images/kid_2.jpg",
      "name": "UPTO",
    },
    {
      "image": "assets/images/bea.jpg",
      "name": "UPTO",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      // AppBar(
      //   // toolbarHeight: 120,
      //   surfaceTintColor: Colors.transparent,
      //   backgroundColor: AppColor.primaryColor,
      //   title: Text(
      //     "E SHOP",
      //     style: TextStyle(
      //         fontSize: 15, fontWeight: FontWeight.bold, color: AppColor.white),
      //   ),
      //   actions: [
      //     Column(
      //       children: [
      //         Row(
      //           children: [
      //             Icon(Icons.person, color: AppColor.white),
      //             SizedBox(
      //               width: 5.h,
      //             ),
      //             Icon(Icons.shopping_cart_outlined, color: AppColor.white),
      //             SizedBox(
      //               width: 5.h,
      //             ),
      //             Image.asset("assets/images/text.png",
      //                 height: 20.h, width: 20.w, color: AppColor.white),
      //           ],
      //         ).paddingSymmetric(horizontal: 5, vertical: 5),
      //         // Container(
      //         //   child: const Row(
      //         //     children: [
      //         //       Expanded(
      //         //         flex: 0,
      //         //         child: Icon(Icons.search),),
      //         //       Expanded(
      //         //           child: TextField (
      //         //             decoration: InputDecoration(
      //         //                 border: InputBorder.none,
      //         //                 labelText: 'Search Product',
      //         //                 hintText: 'Search Product'
      //         //             ),
      //         //           )
      //         //       )
      //         //
      //         //     ],
      //         //   ),
      //         // )
      //       ],
      //     )
      //   ],
      // ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.grey.withOpacity(0.5),
            ),
            child: Column(
              children: [
                addVerticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppColor.black),
                    ),
                    Text(
                      "SEE ALL",
                      style:
                          TextStyle(fontSize: 15, color: AppColor.primaryColor),
                    )
                  ],
                ).paddingOnly(right: 10, left: 10),
                Container(
                  height: Get.height / 8,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var item = categories[index];
                        return Column(
                          children: [
                            Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          item["image"].toString()))),
                            ), //sliderimage_3
                            Text(
                              item["name"].toString(),
                              style: TextStyle(
                                  fontSize: 12, color: AppColor.black),
                            )
                          ],
                        ).paddingAll(10);
                      }),
                ),
              ],
            ),
          ).paddingSymmetric(horizontal: 10, vertical: 10),
          Container(
            height: Get.height / 4.5.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage("assets/images/sliderimage_3.png"),
                fit: BoxFit.cover,
              ),
            ),
            // clipBehavior: Clip.hardEdge,
          ).paddingSymmetric(horizontal: 10, vertical: 10),
          addVerticalSpace(5),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.colorsChoice_3.withOpacity(0.3),
              ),
              child: Column(children: [
                addVerticalSpace(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending Product",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppColor.black),
                    ),
                    Text(
                      "SEE ALL",
                      style:
                          TextStyle(fontSize: 15, color: AppColor.primaryColor),
                    )
                  ],
                ).paddingOnly(right: 10, left: 10),
                addVerticalSpace(5),
                GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: product.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 0.0,
                        mainAxisSpacing: 0.0,
                        childAspectRatio: 1.0 / 1.1),
                    itemBuilder: (context, index) {
                      var item = product[index];
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColor.white,
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                height: 80.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(item["image"].toString()),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ).paddingOnly(top: 10),
                            ),
                            Expanded(
                              // flex: 0,
                              child: Text(
                                item["name"].toString(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            )
                          ],
                        ),
                      ).paddingSymmetric(horizontal: 5, vertical: 5);
                    }),
              ]).paddingSymmetric(horizontal: 15, vertical: 10)),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: AppColor.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                            height: Get.height / 18.h,
                            child: Obx(() => ListView.builder(
                                  itemCount: product_2.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    var item = product_2[index];
                                    return Column(
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              controller.selectedIndex.value =
                                                  index; // Update selected index
                                            },
                                            child: Obx(
                                              () => Text(
                                                item["name"].toString(),
                                                style: TextStyle(
                                                  color: controller
                                                              .selectedIndex
                                                              .value ==
                                                          index
                                                      ? Colors.blue
                                                      : Colors
                                                          .grey, // Change text color based on selection
                                                ),
                                              ),
                                            )),
                                        Obx(() => Container(
                                              height: 2,
                                              width: Get.width / 8,
                                              color: controller.selectedIndex
                                                          .value ==
                                                      index
                                                  ? Colors.blue
                                                  : Colors.transparent,
                                            ))
                                      ],
                                    ).paddingSymmetric(
                                        horizontal: 5, vertical: 5);
                                  },
                                )))),
                    Text(
                      "SEE ALL",
                      style:
                          TextStyle(fontSize: 15, color: AppColor.primaryColor),
                    )
                  ],
                ).paddingOnly(right: 10.h, left: 10.h),
                addVerticalSpace(5.h),
              ],
            ),
          ),
          MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            itemCount: product_3.length,
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var item =product_3[index];
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.grey),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration:BoxDecoration(
                          color: item["off"].toString() == "20"?AppColor.green: Colors.yellow,
                      borderRadius: BorderRadius.circular(3)
                ),
                        child: Text(item["off"].toString()+" Off",style: TextStyle(
                          fontSize: 9,
                          color: AppColor.white
                        ),).paddingSymmetric(horizontal: 10,vertical: 1),
                      ).paddingOnly(top: 10,left: 10),
                    ),
                    Image.asset(item["image"].toString(),height: 200,width: 100,),
                    Column(
                      children: [
                        Text(item["name"].toString()),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: item["price"],
                                  ),
                                  const WidgetSpan(
                                    child: SizedBox(
                                      width: 8, // Adjust the width to your desired spacing
                                    ),
                                  ),
                                  TextSpan(
                                    text: "2000",
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      decoration: TextDecoration
                                          .lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          height:20.h,
                          width:Get.width/3.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColor.primaryColor
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.add,size: 15,color: AppColor.white,),
                              addHorizontalspaceSpace(5),
                              Text("Add to cart",style: TextStyle(color: AppColor.white,fontSize: 12),),
                            ],
                          ),
                        ),
                        addVerticalSpace(20),
                      ],
                    )
                  ],
                ),
              );
            },
          ).paddingSymmetric(horizontal: 15,vertical: 15)
        ],
      ),
      bottomNavigationBar: bottomBar(context: context, index: 0),
    );
  }
}
