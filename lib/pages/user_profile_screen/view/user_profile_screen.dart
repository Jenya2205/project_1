import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumbella/pages/user_profile_screen/controller/state_user_profile_screen.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: context.read<StateUserProfileScreen>().userProfileScreenBodies[
            context.watch<StateUserProfileScreen>().currentBodyIndex]);
  }
}
