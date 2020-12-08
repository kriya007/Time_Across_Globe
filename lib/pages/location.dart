import 'package:flutter/material.dart';
import 'package:world_time/services/world_time_clock.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  List<WorldTime> locations = [
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'America/Argentina/Buenos_Aires', location: 'Argentina/Buenos_Aires', flag: 'argentina.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'America.png'),
    WorldTime(url: 'America/Mexico_City', location: 'Mexico_City', flag: 'America.png'),
    WorldTime(url: 'America/New_York', location: 'New_York', flag: 'America.png'),
    WorldTime(url: 'America/Phoenix', location: 'Phoenix', flag: 'America.png'),
    WorldTime(url: 'America/Toronto', location: 'Toronto', flag: 'America.png'),
    WorldTime(url: 'Antartica/Vostok', location: 'Vostok', flag: 'antartica.png'),
    WorldTime(url: 'Antartica/Troll', location: 'Troll', flag: 'antartica.png'),
    WorldTime(url: 'Asia/Baghdad', location: 'Baghdad', flag: 'iraq.png'),
    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'thailand.png'),
    WorldTime(url: 'Asia/Colombo', location: 'Colombo', flag: 'srilanka.png'),
    WorldTime(url: 'Asia/Damascus', location: 'Damascus', flag: 'syria.png'),
    WorldTime(url: 'Asia/Hong_Kong', location: 'Hong_Kong', flag: 'china.png'),
    WorldTime(url: 'Asia/Jerusalem', location: 'Jerusalem', flag: 'israel.png'),
    WorldTime(url: 'Asia/Karachi', location: 'Karachi', flag: 'pakistan.png'),
    WorldTime(url: 'Asia/Kathmandu', location: 'Kathmandu', flag: 'nepal.png'),
    WorldTime(url: 'Asia/Kolkata', location: 'Kolkata', flag: 'India.png'),
    WorldTime(url: 'Asia/Dhaka', location: 'Dhaka', flag: 'bangladesh.png'),
    WorldTime(url: 'Asia/Kuala_Lumpur', location: 'Kuala_Lumpur', flag: 'malaysia.png'),
    WorldTime(url: 'Asia/Pyongyang', location: 'Pyongyang', flag: 'northkorea.png'),
    WorldTime(url: 'Asia/Riyadh', location: 'Riyadh', flag: 'saudi.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Tokoyo', location: 'Tokoyo', flag: 'japan.png'),
    WorldTime(url: 'Australia/Melbourne', location:'Melbourne', flag:'australia.png'),
    WorldTime(url: 'Australia/Sydney', location:'Sydney', flag:'australia.png'),
    WorldTime(url: 'Australia/Perth', location:'Perth', flag:'australia.png'),
    WorldTime(url: 'Atlantic/Canary', location:'Canary', flag:'atlantic.jpg'),
    WorldTime(url: 'Europe/Amsterdam', location:'Amsterdam', flag:'netherlands.png'),
    WorldTime(url: 'Europe/Berlin', location:'Berlin', flag:'germany.jpg'),
    WorldTime(url: 'Europe/Istanbul', location:'Istanbul', flag:'afghanistan.png'),
    WorldTime(url: 'Europe/Lisbon', location:'Lisbon', flag:'portugal.png'),
    WorldTime(url: 'Europe/London', location:'London', flag:'england.png'),
    WorldTime(url: 'Europe/Moscow', location:'Moscow', flag:'russia.png'),
    WorldTime(url: 'Europe/Oslo', location:'Oslo', flag:'norway.jpg'),
    WorldTime(url: 'Europe/Prague', location:'Prague', flag:'czech.png'),
    WorldTime(url: 'Europe/Paris', location:'Paris', flag:'france.png'),
    WorldTime(url: 'Europe/Vienna', location:'Vienna', flag:'austria.png'),



  ];

  void updateTime(index) async {
   WorldTime instance = locations[index];
   await instance.getTime();
   Navigator.pop(context,{
     'location': instance.location,
     'flag': instance.flag,
     'time': instance.time,
     'Daytime': instance.Daytime

   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[900],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: Text('Choose A Location'),
        centerTitle: true,
      ),
      body: ListView.builder(

        itemCount: locations.length,
          itemBuilder: (context, index){

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
            child: ListTile(
              onTap: () {
                updateTime(index);
              },
              title: Text(locations[index].location,
              style: TextStyle(
                  fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
             leading: CircleAvatar(
               backgroundImage: AssetImage('assets/${locations[index].flag}'),
             ),
            ),
            ),
          );



          }),
    );
  }
}
