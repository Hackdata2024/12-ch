import 'package:flutter/material.dart';

class GridCreator extends StatefulWidget {
  const GridCreator({super.key});

  @override
  State<GridCreator> createState() => _GridCreatorState();
}

class _GridCreatorState extends State<GridCreator> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: ((context, index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 200,
            child: Center(child: Image.asset('assets/pngegg(4).png',fit: BoxFit.cover,height: 100,)),
            decoration: BoxDecoration(color: Color((0xfff0F5697)),borderRadius: BorderRadius.circular(12)),
            width: 200,
          ),
        )));
  }
}
