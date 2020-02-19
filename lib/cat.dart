import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyCustomLayout extends StatefulWidget {
  MyCustomLayout({Key key}) : super(key: key);

  @override
  _MyCustomLayoutState createState() => _MyCustomLayoutState();
}

class _MyCustomLayoutState extends State<MyCustomLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: StaggeredGridView.countBuilder(
          crossAxisCount: 2,
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) => Card(
              margin: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/6/66/An_up-close_picture_of_a_curious_male_domestic_shorthair_tabby_cat.jpg',
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Cat", textAlign: TextAlign.center),
                        ],
                      ),
                    )
                  ],
                ),
              )
              ),
          staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
        ),
    );
  }
}