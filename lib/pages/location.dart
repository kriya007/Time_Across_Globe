import 'package:flutter/material.dart';
import 'package:world_time/services/world_time_clock.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  List<WorldTime> locations = [
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.jpg'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.jpg'),
    WorldTime(url: 'America/Argentina/Buenos_Aires', location: 'Argentina/Buenos_Aires', flag: 'argentina.jpg'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'America.jpg'),
    WorldTime(url: 'America/Mexico_City', location: 'Mexico_City', flag: 'America.jpg'),
    WorldTime(url: 'America/New_York', location: 'New_York', flag: 'America.jpg'),
    WorldTime(url: 'America/Phoenix', location: 'Phoenix', flag: 'America.jpg'),
    WorldTime(url: 'America/Toronto', location: 'Toronto', flag: 'America.jpg'),
    WorldTime(url: 'Antartica/Vostok', location: 'Vostok', flag: ''),
    WorldTime(url: 'Antartica/Troll', location: 'Troll', flag: ''),
    WorldTime(url: 'Asia/Baghdad', location: 'Baghdad', flag: 'iraq.jpg'),
    WorldTime(url: 'Asia/Bangkok', location: 'Bangkok', flag: 'thailand.jpg'),
    WorldTime(url: 'Asia/Colombo', location: 'Colombo', flag: 'srilanka.jpg'),
    WorldTime(url: 'Asia/Damascus', location: 'Damascus', flag: 'syria.jpg'),
    WorldTime(url: 'Asia/Hong_Kong', location: 'Hong_Kong', flag: 'japan.jpg'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.jpg'),
    WorldTime(url: 'Asia/Jerusalem', location: 'Jerusalem', flag: 'israel.jpg'),
    WorldTime(url: 'Asia/Karachi', location: 'Karachi', flag: 'pakistan.jpg'),
    WorldTime(url: 'Asia/Kathmandu', location: 'Kathmandu', flag: 'nepal.jpg'),
    WorldTime(url: 'Asia/Kolkata', location: 'Kolkata', flag: 'India.jpg'),
    WorldTime(url: 'Asia/Kuala_Lumpur', location: 'Kathmandu', flag: 'malaysia.jpg'),
    WorldTime(url: 'Asia/Pyongyang', location: 'Pyongyang', flag: 'northkorea.jpg'),
    WorldTime(url: 'Asia/Riyadh', location: 'Riyadh', flag: 'saudi.jpg'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.jpg'),
    WorldTime(url: 'Asia/Tokoyo', location: 'Tokoyo', flag: 'china.jpg'),
    WorldTime(url: 'Australia/Melbourne', location:'Melbourne', flag:'australia.jpg'),
    WorldTime(url: 'Australia/Sydney', location:'Sydney', flag:'australia.jpg'),
    WorldTime(url: 'Australia/Perth', location:'Perth', flag:'australia.jpg'),
    WorldTime(url: 'Atlantic/Canary', location:'Canary', flag:'atlantic.jpg'),
    WorldTime(url: 'Europe/Amsterdam', location:'Amsterdam', flag:'netherlands.jpg'),
    WorldTime(url: 'Europe/Berlin', location:'Berlin', flag:'germany.jpg'),
    WorldTime(url: 'Europe/Istanbul', location:'Istanbul', flag:'afghanistan.jpg'),
    WorldTime(url: 'Europe/Lisbon', location:'Lisbon', flag:'portugal.jpg'),
    WorldTime(url: 'Europe/London', location:'London', flag:'england.jpg'),
    WorldTime(url: 'Europe/Moscow', location:'Moscow', flag:'russia.jpg'),
    WorldTime(url: 'Europe/Oslo', location:'Oslo', flag:'Norway.jpg'),
    WorldTime(url: 'Europe/Prague', location:'Prague', flag:'czech.jpg'),
    WorldTime(url: 'Europe/Vienna', location:'Vienna', flag:'austria.jpg'),



  ];

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
                print(locations[index].location);
              },
              title: Text(locations[index].location,
              style: TextStyle(
                  fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            ),
            ),
          );



          }),
    );
  }
}
