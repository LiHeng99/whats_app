import 'package:flutter/material.dart';

class SafePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    EdgeInsets paddings = MediaQuery.of(context).padding;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(0, paddings.top, 0, paddings.bottom),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            color: Colors.lightBlue,
            child: Text('头部'),
          ),
          Container(
            color: Colors.redAccent,
            child: Text('底部'),
          )
        ],
      ),
    );
  }
}
