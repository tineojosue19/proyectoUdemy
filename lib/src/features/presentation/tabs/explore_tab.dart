import 'package:flutter/material.dart';
import 'package:udemyyyyy/src/colors/colors.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:udemyyyyy/src/features/presentation/commons_widgets/header_text.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  // 🔥 Lista de datos
  final List<Map<String, String>> lugares = const [
    {
      "titulo": "Pizza Hut",
      "descripcion": "Pizza con queso y pepperoni",
      "imagen": "https://plus.unsplash.com/premium_photo-1667682942060-977925f9a54b?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "rating": "4.8"
    },
    {
      "titulo": "Burger King",
      "descripcion": "Hamburguesas",
      "imagen": "https://images.unsplash.com/photo-1716825340559-0242482f7dd1?q=80&w=327&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "rating": "4.5"
    },
    {
      "titulo": "Sushi House",
      "descripcion": "Sushi fresco",
      "imagen": "https://images.unsplash.com/photo-1553621042-f6e147245754?q=80&w=725&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "rating": "4.9"
    },
    {
      "titulo": "Helados Bon",
      "descripcion": "Helados y paletas de muchos sabores",
      "imagen": "https://images.unsplash.com/photo-1501443762994-82bd5dace89a?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "rating": "5.0"
    },
    {
      "titulo": "MacDonald's",
      "descripcion": "Hamburguesas y papas fritas",
      "imagen": "https://images.unsplash.com/photo-1655734940582-3667ebefb516?q=80&w=866&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "rating": "4.5"
    },
    {
      "titulo": "Wendy's",
      "descripcion": "Pollo frito y papas fritas",
      "imagen": "https://images.unsplash.com/photo-1725839134568-2aff8d21df47?q=80&w=327&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "rating": "4.4"
    },
    {
      "titulo": "Little Caesars",
      "descripcion": "Pizza con queso y pepperoni",
      "imagen": "https://prodcufundraisingstorage.blob.core.windows.net/pictures/0158969_new-detroit-style-slices-n-stix-kit_500.png",
      "rating": "4.7"
    },
  ];

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
                        child: headerText('Discover new places',
                            Colors.black, FontWeight.bold, 30.0),
                      ),
                    ],
                  ),
                ),

                // 🔥 aquí pasamos la lista
                _sliderCards(lugares),
              ]))
        ],
      ),
    );
  }
}

// 🔹 TOP BAR (igual)
Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        width: 700,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
            border: Border.all(color: gris),
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          children: [
            Icon(Icons.search, size: 20.0, color: gris),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Text('Search',
                  style: TextStyle(color: gris, fontSize: 25.0)),
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
            borderRadius: BorderRadius.circular(100.0)),
        child: IconButton(
            icon: Icon(Icons.filter_list, size: 35, color: Colors.white),
            onPressed: () {}),
      )
    ],
  );
}

// 🔥 SLIDER ahora recibe la lista
Widget _sliderCards(List<Map<String, String>> lugares) {
  return Container(
    height: 500, // 👈 altura total del carrusel
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: lugares.length,
      itemBuilder: (context, index) {
        final lugar = lugares[index];

        return _targeta(
          context,
          lugar["titulo"]!,
          lugar["descripcion"]!,
          lugar["imagen"]!,
          lugar["rating"]!,
        );
      },
    ),
  );
}

// 🔥 TARJETA modificada (DINÁMICA)
Widget _targeta(
    BuildContext context,
    String titulo,
    String descripcion,
    String imagen,
    String rating,
    ) {
  return Container(
    width: 250,
    margin: EdgeInsets.only(left: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            height: 320,
            width: double.infinity,
            fit: BoxFit.cover,
            image: NetworkImage(imagen),
          ),
        ),

        SizedBox(height: 10),

        Text(
          titulo,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),

        SizedBox(height: 5),

        Text(
          descripcion,
          style: TextStyle(
            color: Theme.of(context).disabledColor,
          ),
        ),

        SizedBox(height: 8),

        Row(
          children: [
            Icon(Icons.star, color: amarillo, size: 18),
            SizedBox(width: 4),
            Text(rating),

            Spacer(), // 👈 empuja el botón a la derecha

            SizedBox(
              height: 28,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
                onPressed: () {},
                child: Text(
                  'Delivery',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}