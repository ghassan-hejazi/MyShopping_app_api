// ignore_for_file: avoid_print, prefer_const_constructors_in_immutables, sort_child_properties_last, prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_shop_app/Pages/cart_page.dart';
import 'package:my_shop_app/controller/count_controller.dart';
import 'package:my_shop_app/model/api_class.dart';

class ProductPage extends StatefulWidget {
  final Products? futureAlbum;
  ProductPage(this.futureAlbum, {Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool show_favorite = true;
  bool show_favorite2 = false;
  bool _customTileExpanded = false;
  CountController controller =Get.put(CountController(),permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF2D2E49),
              size: 28,
            ),
          );
        }),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Product Details',
          style: GoogleFonts.cairo(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF2D2E49),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Color(0xFF2D2E49),
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(26.0),
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: Image.network(
                widget.futureAlbum!.images[0],
                width: 250,
                height: 250,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 16),
            const Divider(
              color: Colors.grey,
              height: 0,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Transform.scale(
                  scaleX: -1,
                  child: const Icon(
                    Icons.local_offer,
                    color: Colors.green,
                    size: 21,
                  ),
                ),
                Text(
                  widget.futureAlbum!.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.cairo(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Transform.scale(
                  scaleX: -1,
                  child: const Icon(
                    Icons.local_offer,
                    color: Colors.green,
                    size: 21,
                  ),
                ),
                Text(
                 '${widget.futureAlbum!.price}',
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  'Size : ',
                  style: GoogleFonts.cairo(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 40,
                  child: Expanded(
                    child: DropdownSearch<String>(
                      popupProps: PopupProps.menu(
                        fit: FlexFit.loose,
                        menuProps: MenuProps(
                          backgroundColor: const Color(0xFFE9E9EC),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        showSelectedItems: true,
                        disabledItemFn: (String s) => s.startsWith('I'),
                      ),
                      items: ["12 cm", "14 cm", "16 cm", "18 cm"],
                      dropdownDecoratorProps: DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 16),
                          filled: true,
                          fillColor: const Color(0xFFE9E9EC),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onChanged: print,
                      selectedItem: "12 cm",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ExpansionTile(
              tilePadding: EdgeInsets.all(0),
              childrenPadding: EdgeInsets.only(left: 8),
              backgroundColor: Color(0xFFE9E9EC),
              title: Text(
                'Description',
                style: GoogleFonts.cairo(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
              trailing: Icon(
                _customTileExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                size: 30,
              ),
              children: <Widget>[
                Text(
                '${widget.futureAlbum!.price}',
                  style: GoogleFonts.cairo(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
              onExpansionChanged: (bool expanded) {
                setState(() => _customTileExpanded = expanded);
              },
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE9E9EC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          controller.decrement();
                        },
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                          size: 25,
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE9E9EC),
                            elevation: 0,
                            minimumSize: const Size(40, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                      SizedBox(width: 16),
                     GetX<CountController>(
                        builder: (controller) {
                          return Text(
                            '${controller.counter}',
                            style: GoogleFonts.cairo(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF2D2E49),
                            ),
                          );
                        }
                      ),
                      SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            controller.increment();
                          });
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 25,
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE9E9EC),
                            elevation: 0,
                            minimumSize: const Size(40, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: show_favorite2 ? Colors.black12 : Colors.red[200],
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      show_favorite = !show_favorite;
                      show_favorite2 = !show_favorite2;
                      setState(() {});
                    },
                    icon: show_favorite
                        ? Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 30,
                          )
                        : const Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                            size: 30,
                          ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add_shopping_cart_outlined,
                    color: Color(0xFF2D2E49),
                    size: 32,
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE9E9EC),
                      minimumSize: const Size(80, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'BUY NOW',
                    style: GoogleFonts.cairo(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF2D2E49),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFD6969),
                      minimumSize: const Size(240, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
