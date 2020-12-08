import 'package:flutter/material.dart';
import 'package:world_time/services/world_time_clock.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


void setupTime() async {
  WorldTime instance = WorldTime(location:'Ahmedabad', flag:'India.png', url: 'Asia/Kolkata');
  await instance.getTime();
  Navigator.pushReplacementNamed(context, '/home', arguments: {
    'location': instance.location,
    'flag': instance.flag,
    'time': instance.time,
    'Daytime': instance.Daytime

  });

}

@override
  void initState() {
    super.initState();
    setupTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: SpinKitRotatingPlain(
          color: Colors.white70,
          size: 100.0
        ),
      ),
    );
  }
}
