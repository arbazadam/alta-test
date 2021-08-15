import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/business_logic/bloc/api_bloc.dart';
import 'package:test_app/model/users.dart';
import 'package:test_app/presentation/widgets/single_user_widget.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    BlocProvider.of<ApiBloc>(context, listen: false)
        .add(GetUsersFromTheApi());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Hello ReqRes users!',
                    style: TextStyle(
                        fontSize: screenSize.width * .08,
                        fontWeight: FontWeight.bold)),
                Flexible(child: BlocBuilder<ApiBloc,ApiState>(
                  builder: (context, state) {
                    if(state is ApiInitial)
                    {
                      return CircularProgressIndicator();
                    }
                    else if (state is ResultsSuccessfulState)
                      return Wrap(
                        children: [...state.users.map((e)=>SingleUser(e))],
                      );
                    else {
                      return Text('No results',style: TextStyle(color: Colors.red));
                    }
                  },
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
