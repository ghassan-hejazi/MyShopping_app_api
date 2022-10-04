// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, non_constant_identifier_names, prefer_const_constructors, unnecessary_string_interpolations, avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_shop_app/Pages/cart_page.dart';
import 'package:my_shop_app/Pages/product_page.dart';
import 'package:my_shop_app/Widget/bottomNavigationBar.dart';
import 'package:my_shop_app/Widget/floatingActionButton.dart';
import 'package:my_shop_app/controller/item_class.dart';
import 'package:my_shop_app/model/api_class.dart';

class ClothesPage extends StatefulWidget {
  final int id;
  ClothesPage(this.id, {Key? key}) : super(key: key);

  @override
  State<ClothesPage> createState() => _ClothesPageState();
}

class _ClothesPageState extends State<ClothesPage> {
  bool show_favorite = true;
  bool show_favorite2 = false;
  List<dynamic> tasks = [];
  late List<Products?> futureAlbum;

  List<Item> items = [
    Item(
      name: 'bag',
      price: 50.0,
      imageproduct: 'assets/images/bag1.png',
    ),
    Item(
      name: 'Smart Watch',
      price: 100.0,
      imageproduct: 'assets/images/gh.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFD6969),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.local_mall,
              color: Color(0xFF2D2E49),
            ),
            Text(
              'MY SHOP',
              style: GoogleFonts.cairo(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2D2E49),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5.r),
            child: IconButton(
              onPressed: () {
                Get.to(CartPage());
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Color(0xFF2D2E49),
                size: 30.r,
              ),
            ),
          ),
        ],
      ),
      body: FutureBuilder(
        future: fetchProductByCategery(widget.id),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            futureAlbum = snapshot.data as List<Products?>;
            return MasonryGridView.count(
              padding: EdgeInsets.only(top: 16.r, left: 10.r, right: 10.r),
              crossAxisCount: 2,
              mainAxisSpacing: 10.r,
              crossAxisSpacing: 10.r,
              itemCount: futureAlbum.length,
              itemBuilder: (BuildContext context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductPage(futureAlbum[i])));
                  },
                  radius: 10,
                  borderRadius: BorderRadius.circular(15.r),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color.fromARGB(255, 216, 216, 220),
                      ),
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Column(
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              width: double.infinity,
                              height: 180.r,
                              child: Image.network(
                                '${futureAlbum[i]!.images[0]}',
                                width: 180.r,
                                height: 190.r,
                                fit: BoxFit.fill,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                              ),
                            ),
                            Divider(height: 0, thickness: 1),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Transform.scale(
                                          scaleX: -1.r,
                                          child: Icon(
                                            Icons.local_offer,
                                            color: Colors.green,
                                            size: 18.r,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            '${futureAlbum[i]!.title}',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: GoogleFonts.cairo(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF2D2E49),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Transform.scale(
                                          scaleX: -1.r,
                                          child: Icon(
                                            Icons.local_offer,
                                            color: Colors.green,
                                            size: 18.r,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            '${futureAlbum[i]!.price}',
                                            style: GoogleFonts.cairo(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.red[200],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_shopping_cart_outlined,
                                color: Colors.white,
                                size: 25,
                              )),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButtonWidget(),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }

  Future<void> _getApi() async {
    try {
      var response = await Dio().get('https://fakestoreapi.com/products');
      tasks = response.data['products'];
      setState(() {});
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
