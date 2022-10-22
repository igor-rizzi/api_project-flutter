import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Country(image)
{
  return Card(
    color: Colors.white,
    child: ListTile(
        leading: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset('assets/imagens-moedas/${image}.png', width: 50.00),
        )
    ),

  );
}