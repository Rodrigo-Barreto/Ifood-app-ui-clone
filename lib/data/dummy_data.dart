import 'package:flutter/material.dart';
import '../models/shops.dart';
import 'package:ifood/models/menuitem.dart';

const Dummy_Data_Shops = const [
  Shops(
    id: 'r1',
    title: 'Mc Donalds',
    adress: 'Av. Lucas Nogueira Garcez',
    category: 'Lanches',
    color: Colors.red,
  ),
  Shops(
    id: 'r2',
    title: 'Crepe do Careca',
    adress: 'Rua Isabel Pires Antonio',
    category: 'Francesa',
    color: Colors.purple,
  ),
  Shops(
    id: 'r3',
    title: 'Habibs Atibaia',
    adress: 'Rua Voluntarios da Patria',
    category: 'Lanches',
    color: Colors.pink,
  ),
  Shops(
    id: 'r4',
    title: 'Atibaia Sushi',
    adress: 'Rua Clovis  Soares',
    category: 'Lanches',
    color: Colors.blue,
  ),
  Shops(
    id: 'r5',
    title: 'Adega Ufa ',
    adress: 'Av. Lucas Nogueira Garcez',
    category: 'Adega',
    color: Colors.amber,
  ),
  Shops(
    id: 'r6',
    title: 'Pizzaria Dona Gertrudes',
    adress: 'Av. Dona Gertrudes',
    category: 'Pizzaria',
    color: Colors.brown,
  ),
  Shops(
    id: 'r6',
    title: 'Italian Pasta',
    adress: 'Av. Geronimo de Carmargo',
    category: 'Italiano',
    color: Colors.pink,
  ),
  Shops(
    id: 'r7',
    title: 'Nagumo',
    adress: 'Av. Lucas Nogueira Garcez',
    category: 'Mercado',
    color: Colors.blue,
  ),
];

const Dummy_data_Menu = const [
  MenuItem(
      title: 'Esfihas Promoção',
      id: 'm1',
      price: 10.80,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pretium tempus bibendum. Phasellus id dignissim nibh. Nulla facilisi. Pellentesque nec ante eros. Suspendisse potenti',
      imageUrl:
          'https://img.itdg.com.br/tdg/images/recipes/000/110/449/326013/326013_original.jpg?mode=crop&width=710&height=400',
      idShops: 'r3'),
];
