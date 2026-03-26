import 'package:flutter/material.dart';
import 'package:udemyyyyy/src/colors/colors.dart';
import 'package:card_swiper/card_swiper.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      _topBar(context),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        padding: EdgeInsets.only(left: 20.0),
                        alignment: Alignment.centerLeft,
                        child: Text('Discover new places',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0)),
                      ),
                    ],
                  ),
                ),
                _sliderCards(),
              ],
          )
          )
        ]));
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        width: 700,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
          border: Border.all(color: gris),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Row(
          children: [
            Icon (Icons.search, size: 20.0, color: gris),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Text('Search', style: TextStyle(
                color: gris,
                fontSize: 25.0
              )),
            )
          ],
        ),
      ),
      Container(
        width: 50.0,
        height: 50.0,
        margin: EdgeInsets.only(left: 13),
        decoration: BoxDecoration(
          color: Theme.of(context).disabledColor,
          borderRadius: BorderRadius.circular(100.0)
        ),
        child: IconButton(
          icon: Icon(Icons.filter_list, size: 35, color: Colors.white),
          onPressed: () {

          }
        ),
      )
    ],
  );
}

Widget _sliderCards() {
  return Container(
    padding: EdgeInsets.only(left: 15, right: 15),
    height: 600.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _targeta(context);
          }
        );
      }
    ),
    );
}

Widget _targeta(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 300.0,
            height: 400.0,
            fit: BoxFit.cover,
            image: NetworkImage('https://plus.unsplash.com/premium_photo-1667682942060-977925f9a54b?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text("Pepperoni's Pizza Hut",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text('Pizza with cheese and spinach.',
                  style: TextStyle(
                    color: Theme.of(context).disabledColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0)),
            ),
            Row(
              children: [
                Icon(Icons.star, color: amarillo, size: 20.0),
                Text("4.8", style:
                  TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0)),
                Text(" (233 ratings)",
                style: TextStyle(
                  color: Theme.of(context).disabledColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14)),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  width: 100.0,
                  height: 20.0,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Delivery', style: TextStyle(fontSize: 10.0))),
                )
              ]
            )
          ],
        )
      ],
    ),
  );
}