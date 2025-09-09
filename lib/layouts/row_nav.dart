import 'package:flutter/material.dart';
class RowNav extends StatelessWidget{
  const RowNav ({super.key});

  @override
  Widget build (BuildContext context){
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.favorite),
        Icon(Icons.favorite),
        Icon(Icons.favorite),
      ],
    );
  }
}