import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:naija_mall/constants/assets.dart';
import 'package:naija_mall/utils/app_font_style.dart';
import 'package:naija_mall/widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Assets.imagesTopImage),
                        fit: BoxFit.fill)),
                child: Container(
                  padding: const EdgeInsets.only(left: 8, bottom: 15),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Athletic Shoes",
                        style: appFontStyleWithHeight(
                            42, Colors.white, FontWeight.bold, 1.5),
                      ),
                      Text(
                        "Collections",
                        style: appFontStyleWithHeight(
                            42, Colors.white, FontWeight.bold, 1.5),
                      ),
                      TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.transparent,
                          controller: _tabController,
                          isScrollable: true,
                          labelColor: Colors.white,
                          labelStyle:
                              appFontStyle(24, Colors.white, FontWeight.bold),
                          unselectedLabelColor: Colors.grey.withOpacity(0.3),
                          tabs: const [
                            Tab(
                              text: 'Men\'s Shoes',
                            ),
                            Tab(
                              text: 'Women\'s Shoes',
                            ),
                            Tab(
                              text: 'Kids\'s Shoes',
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.265),
                child: Container(
                  padding: const EdgeInsets.only(left: 12),

                  //Product card list view
                  child: TabBarView(controller: _tabController, children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.405,
                          child: ListView.builder(
                              itemCount: 7,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return const ProductCard(
                                    price: '\$200',
                                    category: 'Men Shoes',
                                    id: '1',
                                    name: 'Adidas ',
                                    image:
                                        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80');
                              }),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Latest Shoes",
                                style: appFontStyle(
                                    24, Colors.black, FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Show all',
                                    style: appFontStyle(
                                        22, Colors.black, FontWeight.w500),
                                  ),
                                  const Icon(Ionicons.caret_forward, size: 20)
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.15,

                          //List view builder of latest items
                          child: ListView.builder(
                              itemCount: 7,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),

                                  //Latest items card
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.white,
                                              blurRadius: 0.1,
                                              spreadRadius: 0.5,
                                              offset: Offset(0, 1))
                                        ],
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16))),
                                    width: MediaQuery.of(context).size.width *
                                        0.28,
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(16)),
                                      child: CachedNetworkImage(
                                          fit: BoxFit.cover,
                                          imageUrl:
                                              'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
                                    ),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.405,
                          color: Colors.teal,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.405,
                          color: Colors.lime,
                        )
                      ],
                    ),
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
