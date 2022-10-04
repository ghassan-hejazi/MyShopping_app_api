// ignore_for_file: file_names

/*Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
                clipBehavior: Clip.antiAlias,
                width: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFE9E9EC),
                    )),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/images/bag.jpg',
                        width: 180, height: 168, fit: BoxFit.fill),
                    const Text('300\$'),
                    const Text('Bag'),
                    const Divider(
                      thickness: 1,
                      height: 0,
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Color(0xFFFD6969),
                      ),
                      label: Text(
                        'Add to cart',
                        style: GoogleFonts.cairo(
                            color: const Color(0xFFFD6969),
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                )),
          ),*/
          /*Container(
            width: 160,
            child: Card(
              color: Colors.white38,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAlias,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  Image.asset('assets/images/bag1.png',
                      width: 110, height: 118, fit: BoxFit.fill),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Bag',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.cairo(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF2D2E49),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    
                    thickness: 1,
                    height: 0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$50',
                        style: GoogleFonts.cairo(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          show_favorite = !show_favorite;
                          setState(() {});
                        },
                        icon: show_favorite
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 30,
                              )
                            : const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                      ),
                    ],
                  ),
                  
                ]),
              ),
            ),
          );*/