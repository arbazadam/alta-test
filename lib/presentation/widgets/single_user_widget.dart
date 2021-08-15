import 'package:flutter/material.dart';

class SingleUser extends StatelessWidget {
  const SingleUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .2,
      child: Column(
        children: [
          Text(
            'George',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * .02),
          Text('george.bluth@reqres.in'),
          SizedBox(height: size.height * .02),
          Container(
            height: size.height * .1,
            child: Image.network(
              'https://images.unsplash.com/photo-1518684079-3c830dcef090?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
              width: 400,
            ),
          )
        ],
      ),
    );
  }
}
