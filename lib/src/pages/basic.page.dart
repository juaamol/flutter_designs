import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Image(
          image: NetworkImage(
              'https://i0.wp.com/digital-photography-school.com/wp-content/' +
                  'uploads/2019/02/Landscapes-04-jeremy-flint.jpg?fit=1500%2C1000&ssl=1'),
        ),
        _build()
      ],
    ));
  }

  Widget _build() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
                      child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Image description',
                  style: titleStyle,
                ),
                SizedBox(height: 7.0),
                Text(
                  'More detailed description',
                  style: subtitleStyle,
                )
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 30.0),
          Text('41', style: TextStyle(fontSize: 20.0))
        ],
      ),
    ) ;
  }
}
