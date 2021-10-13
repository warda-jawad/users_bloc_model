import 'package:flutter/material.dart';
import 'package:josnplacholder/screens/main_tabs_screen/main_tabs.dart';
import 'package:josnplacholder/screens/users_screen/page/user_ui.dart';

import 'app/app.dart';
import 'injection.dart';

Future<void> main() async {
  await initGetIt();
  runApp(MainTabs());
}
