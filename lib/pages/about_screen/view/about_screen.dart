import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/pages/about_screen/controller/state_about_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: context
          .read<StateAboutScreen>()
          .aboutBodies[context.watch<StateAboutScreen>().currentBodyIndex],
    );
  }
}
