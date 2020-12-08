import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data ={};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    print(data);

    //setting bgimage
    String bgimage = data['Daytime'] ? 'daytime.jpg': 'night_time.jpg';
    Color bgcolor = data['Daytime'] ? Colors.blue : Colors.indigo;

    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('assets/$bgimage'),
               fit: BoxFit.cover,
             ),
          ),
        child: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: () async {
                dynamic result = await Navigator.pushNamed(context, '/location');
                setState(() {
                  data = {
                     'time': result['time'],
                    'location': result['location'],
                    'Daytime': result['Daytime'],
                    'flag':result['flag']
                  };
                });
              },
              icon: Icon(
                  Icons.edit_location),
              color: Colors.grey,
              label: Text('Edit Location'),
            ),
            SizedBox(height:30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  data['location'],
                  style: TextStyle(
                    fontSize: 40,
                    letterSpacing: 2.0,
                    color: Colors.white
                  ),
                ),

              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 60,
                    letterSpacing: 2.0,
                    color: Colors.white
                  )
                ),
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}
