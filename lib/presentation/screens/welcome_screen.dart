import 'package:flutter/material.dart';
import 'package:test_app/presentation/widgets/single_user_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Hello ReqRes users!',
                    style: TextStyle(
                        fontSize: screenSize.width * .08,
                        fontWeight: FontWeight.bold)),
                SingleUser()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
