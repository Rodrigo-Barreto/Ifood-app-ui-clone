import 'package:flutter/material.dart';

class RestaurantMenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: InkWell(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 150,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pastel de Calabresa',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text(
                              'orem ipsum dolor sit amet, consectetur adipiscing elit. Mauris molestie leo in elit sagittis, at ultrices ligula fermentum'),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'R\$ 8,00',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.green),
                              ),
                              Text(
                                ' R\$ 8,00',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.network(
                        'https://www.sabornamesa.com.br/media/k2/items/cache/b9ad772005653afce4d4bd46c2efe842_L.jpg',
                        fit: BoxFit.cover,
                        height: 95,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              print('oioio');
            },
          ),
        ),
      ],
    );
  }
}
