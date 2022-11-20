import 'package:bloc_core_p/Bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<AppBloc, AppState>(
              builder: (context, state) {
                if(state is !RandomNumber){
                  return Text("Not init");
                }
                final data=(state as RandomNumber).number;
                return Text(data!.toString());
              },
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<AppBloc>(context).add(RandomNumberGenarate());
        },
        child: Text(""),
      ),
    );
  }
}
