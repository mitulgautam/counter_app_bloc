import 'package:counter_app_bloc/bloc/counterBloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int counter = 0;
  CounterBloc bloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          StreamBuilder<int>(
              initialData: 0,
              stream: bloc.outputStream,
              builder: (context, snapshot) {
                return Text(
                  snapshot.data.toString(),
                  style: TextStyle(color: Colors.pink, fontSize: 192.0),
                );
              }),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              OutlineButton(
                borderSide: BorderSide(
                  color: Colors.pink,
                ),
                highlightElevation: 16.0,
                padding: EdgeInsets.all(32.0),
                onPressed: () {
                  bloc.inputSink.add(--counter);
                },
                color: Colors.pink,
                splashColor: Colors.pink,
                child: Icon(
                  Icons.exposure_neg_1,
                  size: 64.0,
                  color: Colors.pink,
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.all(32.0),
                onPressed: () {
                  bloc.inputSink.add(++counter);
                },
                color: Colors.pink,
                splashColor: Colors.white,
                child: Icon(
                  Icons.exposure_plus_1,
                  size: 64.0,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
