import 'package:flutter/material.dart';
import 'package:test_app/model/users.dart';

class SingleUser extends StatelessWidget {
  Users singleUser;
  SingleUser(this.singleUser);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * .2,
      child: Column(
        children: [
          Text(
            singleUser.firstName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * .01),
          Text('${singleUser.emailId}'),
          SizedBox(height: size.height * .01),
          Container(
            height: size.height * .1,
            child: Image.network(
              '${singleUser.avatar}',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
