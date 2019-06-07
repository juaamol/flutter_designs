import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        _buildImage(),
        _buildTitleIcon(),
        _createActions(),
        _buildText(),
        _buildText(),
        _buildText(),
        _buildText(),
        _buildText(),
        _buildText(),
      ],
    )));
  }

  Image _buildImage() {
    return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage(
              'https://i0.wp.com/digital-photography-school.com/wp-content/' +
                  'uploads/2019/02/Landscapes-04-jeremy-flint.jpg?fit=1500%2C1000&ssl=1'),
          height: 180.0,
          fit: BoxFit.cover),
    );
  }

  Widget _buildTitleIcon() {
    return SafeArea(
      child: Container(
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
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action(Icons.call, 'Call'),
        _action(Icons.near_me, 'Near me'),
        _action(Icons.share, 'Share')
      ],
    );
  }

  Widget _action(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _buildText() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Ut adipisicing aliqua anim minim Lorem ex est do aliqua commodo veniam labore. Ipsum proident esse voluptate fugiat ea velit. Nostrud ex mollit ullamco ullamco ullamco. Ex enim culpa eiusmod aute. Consequat officia eiusmod in aliqua nostrud cupidatat commodo officia consectetur enim ad. Amet est aliqua labore Lorem nostrud.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
