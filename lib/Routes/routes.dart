import 'package:driftdemo/Routes/routesName.dart';
import 'package:driftdemo/Screens/home.dart';
import 'package:driftdemo/Screens/splashscreen.dart';
import 'package:get/get.dart';

final getPages = <GetPage>[
  GetPage(name: RoutesName.splash, page: () => const Splashscreen()),
  GetPage(name: RoutesName.home, page: () => MyHomePage(title: 'Impulsive Web'))
];
