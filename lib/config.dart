import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color pc = Color(0xff416d6d);

List<BoxShadow> listShadow = [
  BoxShadow(
    color: Colors.grey[300],
    blurRadius: 30,
    offset: Offset(0, 10),
  )
];
List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'images/cat.png'},
  {'name': 'Dog', 'iconPath': 'images/dog.png'},
  {'name': 'Horse', 'iconPath': 'images/horse.png'},
  {'name': 'Parrot', 'iconPath': 'images/parrot.png'},
  {'name': 'Rabbit', 'iconPath': 'images/rabbit.png'},
];
List<Map> drawerItem = [
  {'icon': FontAwesomeIcons.paw, 'title': 'Adoption'},
  {'icon': Icons.monetization_on, 'title': 'Donations'},
  {'icon': FontAwesomeIcons.plus, 'title': 'Add Post'},
  {'icon': FontAwesomeIcons.heart, 'title': 'Favourite'},
  {'icon': Icons.mail, 'title': 'Messages'},
  {'icon': FontAwesomeIcons.userAlt, 'title': 'Profile'},
];
