import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Globals {
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
}

class Globals2 {
  static GlobalKey<ScaffoldState> item2 = GlobalKey<ScaffoldState>();
}

final keySection = GlobalKey();
final keyService = GlobalKey();
final keyPortfolio = GlobalKey();

Future scroll() async {
  final context = keySection.currentContext;
  await Scrollable.ensureVisible(
    context,
    duration: const Duration(seconds: 1),
    alignment: 0.3,
  );
}

Future scrollService() async {
  final context = keyService.currentContext;
  await Scrollable.ensureVisible(
    context,
    duration: const Duration(seconds: 1),
    alignment: 0.3,
  );
}

Future scrollPortfolio() async {
  final context = keyPortfolio.currentContext;
  await Scrollable.ensureVisible(
    context,
    duration: const Duration(seconds: 1),
    alignment: 0.3,
  );
}

final Uri _url = Uri.parse(
    'https://api.whatsapp.com/send?phone=5521965524224&text=Ol%C3%A1!%20Gostaria%20de%20saber...%20');

Future<void> openUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}
