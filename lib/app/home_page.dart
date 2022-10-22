import 'package:api_project/app/components/menu_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/coin.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = ['BRL', 'AUD', 'CAD', 'CHF', 'CNY'];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Menu(context),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 500,
                    child: ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: images.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: 50,
                            color: Colors.blue,
                            child: Center(child: Country('${images[index]}')),
                          );
                        }
                    )
                ),
              ]
          )),
    );
  }
}
