import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/app.dart';

import 'presentation/screens/welcome_screen.dart';

void main() => runApp(BaseApp());

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return App();
  }
}
