import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              print('Orderdar');
            },
            child: Container(
              alignment: Alignment.center,
              child: Text('Ordenar'),
              height: 31,
              width: 78,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }
}
