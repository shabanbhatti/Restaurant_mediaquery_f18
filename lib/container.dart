import 'package:flutter/material.dart';

class MyCOntainer extends StatelessWidget {
  const MyCOntainer({super.key});

  @override
  Widget build(BuildContext context) {
    var contMqWidth= MediaQuery.of(context).size.width;
    var contMqHeight = MediaQuery.of(context).size.height;
    return Container(color: Colors.pink,height: contMqHeight,);
  }
}