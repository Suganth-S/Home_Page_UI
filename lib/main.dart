import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:home_page_ui/item.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false ,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('E-commerce Design'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              debugPrint("Search");
            },
          ),
          Badge(
              position: BadgePosition.topEnd(top: 0, end: 3),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
              ),
              badgeContent: Text("3"),
    )],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 100,
              child: ListView.builder(
                  itemCount: _choices.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Container(
                        width: 80,
                        height: 80,
                        child: Card(
                          color: Colors.blue,
                          child: Container(
                            child: Center(
                                child: Text(
                                  _choices[index].name,
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          shape: CircleBorder(),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _choices.length,
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {

                    return Container(
                      width: 400,
                      child: Card(
                        child: Container(
                            child: Image.asset('images/sale.webp',
                                fit: BoxFit.cover)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        clipBehavior: Clip.antiAlias,
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                        "Popular Product",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(fontWeight: FontWeight.bold),
                      )),
                  Text("Show more")
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () =>
                          null,
                      child: Column(
                        children: [
                          Hero(
                            tag: "anim$index",
                            child: Container(
                              margin: EdgeInsets.only(
                                  right: 8, left: 8, top: 0, bottom: 0),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                                  color: Colors.blue.shade200,
                                  image: DecorationImage(
                                      image: AssetImage("images/shoes_1.png"))),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Nike")
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                        "New Product",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(fontWeight: FontWeight.bold),
                      )),
                  Text("Show more")
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => null,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              right: 8, left: 8, top: 0, bottom: 0),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(14)),
                              color: Colors.blue.shade200,
                              image: DecorationImage(
                                  image: AssetImage("images/shoes_1.png"))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Puma")
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Item> _choices = [
    Item("All", Icon(Icons.clear_all_rounded)),
    Item("Men", Icon(Icons.person)),
    Item("Women", Icon(Icons.emoji_people_sharp)),
    Item("Fashion", Icon(Icons.shopping_bag)),
    Item("Baby", Icon(Icons.child_care)),
    Item("Kids", Icon(Icons.face_sharp))
  ];

}
