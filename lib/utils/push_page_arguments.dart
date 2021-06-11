import 'package:flutter/material.dart';

void pushPageArguments(BuildContext context, route, arguments) {
  Navigator.of(
    context,
  ).pushNamed(
    route,
    arguments: arguments,
  );
}
