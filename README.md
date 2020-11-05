# ip_geolocation_api

Example

## Example
```
import 'package:flutter/material.dart';
import 'package:ip_geolocation_api/ip_geolocation_api.dart';
import 'dart:convert';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _text = '';
  GeoLocationData _geoLocationData;


  @override
  initState() {
    super.initState();
    getIp();
  }

  Future<void> getIp() async {
    _geoLocationData = await GeolocationAPI.getData();
    if (_geoLocationData != null) {
      setState(() {
        _text = _geoLocationData.ip;
      });

    } else {
      print('No llego nada desde data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_text),
                FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                  if (_geoLocationData != null) {
                    setState(() {
                      _text = jsonEncode(_geoLocationData.toJson());
                    });
                  }
                }, child: Text('toJson')),

              ],
            ),
          ),
        )
    );
  }
}

```
 
