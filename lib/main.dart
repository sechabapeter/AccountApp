import 'package:accountdetails/locator.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:provider/provider.dart';
import 'package:accountdetails/ui/router.dart';
import 'core/models/user.dart';
import 'package:accountdetails/core/services/authentication_service.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>(
      initialData: User.initial(),
      create: (context) =>
          locator<AuthenticationService>().userController.stream,
      child: MaterialApp(
        title: 'TopCode Account App',
        theme: ThemeData(),
        initialRoute: 'login',
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
