import 'dart:ui';

import 'package:flutter/material.dart';

const List cardList = [
  {
    'title': 'Logo Dessign',
    'subtitle': 'Planned: 11 tasks',
    'card_color': Color.fromARGB(255, 75, 226, 213),
    'icon': Icons.logo_dev,
  },
  {
    'title': 'Website Landing Page',
    'subtitle': 'Planned: 6 tasks',
    'card_color': Color.fromARGB(255, 207, 80, 224),
    'icon': Icons.sports_baseball_outlined,
  },
  {
    'title': 'Mobile App UI',
    'subtitle': 'Planned: 11 tasks',
    'card_color': Color.fromARGB(255, 206, 155, 53),
    'icon': Icons.mobile_friendly_outlined,
  }
];

const List cardTaskDay = [
  {
    'day': '18',
    'cards': [
      {
        'hour': '13:00',
        'icon': Icons.sports_baseball_outlined,
        'title': 'Dribble',
        'dificult': 'High',
        'text': 'Daily UI Chaliange',
        'check': true,
        'color': Colors.lightBlue,
      }
    ]
  },
  {
    'day': '19',
    'cards': [
      {
        'hour': '13:00',
        'icon': Icons.sports_baseball_outlined,
        'title': 'Dribble',
        'dificult': 'High',
        'text': 'Daily UI Chaliange',
        'check': true,
        'color': Colors.lightGreen,
      },
      {
        'hour': '15:00',
        'icon': Icons.person_pin_outlined,
        'title': 'Meeting',
        'dificult': 'Low',
        'text': 'Alguma atividade do dia',
        'check': false,
        'color': Colors.deepOrange,
      },
      {
        'hour': '18:00',
        'icon': Icons.sports_basketball_outlined,
        'title': 'Fun Day',
        'dificult': 'Normal',
        'text': 'JKogar Basquete',
        'check': false,
        'color': Colors.pink
      }
    ]
  },
  {'day': '20', 'cards': []},
  {'day': '21', 'cards': []},
  {
    'day': '22',
    'cards': [
      {
        'hour': '18:00',
        'icon': Icons.sports_basketball_outlined,
        'title': 'Fun Day',
        'dificult': 'Normal',
        'text': 'JKogar Basquete',
        'check': true,
        'color': Colors.pink
      }
    ]
  },
];
