import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid/pages/covid_day.dart';
import 'package:covid/pages/covid_location.dart';
import 'package:covid/pages/covid_province.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDisableButton = false;
  @override
  void initState() {
    super.initState();
  }

  Widget covidDayButton() {
    return Center(
      child: RaisedButton(
        onPressed: () {
          MaterialPageRoute materialPageRoute =
              MaterialPageRoute(builder: (BuildContext context) => CovidDay());
          Navigator.push(context, materialPageRoute);
        },
        color: Colors.blue.shade700,
        child: Text(
          "Check Covid-19 DAY",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget covidProvinceButton() {
    return Center(
      child: RaisedButton(
        onPressed: () {
          MaterialPageRoute materialPageRoute = MaterialPageRoute(
              builder: (BuildContext context) => CovidProvince());
          Navigator.push(context, materialPageRoute);
        },
        color: Colors.blue.shade700,
        child: Text(
          "Check Covid-19 Province",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget covidSaveLocationButton() {
    return Center(
      child: RaisedButton(
        onPressed: !(isDisableButton)
            ? () async {
                Location location = new Location();
                location.requestPermission();
                LocationData locationData = await location.getLocation();
                showAlert();
                // location.onLocationChanged.listen((event) {
                //   if ((locationData.longitude == event.longitude) &&
                //       (locationData.latitude == event.latitude)) {
                //     setState(() {
                //       isDisableButton = true;
                //     });
                //   }
                // });

                print(locationData);
                Firestore firestore = Firestore.instance;
                Map<String, dynamic> map = Map();
                var now = new DateTime.now();
                map['lat'] = locationData.latitude;
                map['lng'] = locationData.longitude;
                map['date'] = now.toString();
                await firestore
                    .collection("Location")
                    .document()
                    .setData(map)
                    .then((value) {
                  //print("Success upload ${now}");
                });
              }
            : null,
        color: Colors.blue.shade700,
        child: Text(
          "Check Covid-19 Save",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget showContent() {
    return IntrinsicWidth(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          covidDayButton(),
          covidProvinceButton(),
          covidSaveLocationButton(),
          showgetLocationButton(),
        ],
      ),
    );
  }

  Widget showgetLocationButton() {
    return Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => CovidLocation()));
        },
        color: Colors.blue.shade700,
        child: Text(
          "Check Covid-19 Location",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget showAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("บันทึก สถานที่นี้ เรียบร้อย"),
          );
        });
  }

  Widget showDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture:
                FadeInImage.memoryNetwork(placeholder: null, image: null),
            accountName: Text("Guest"),
            accountEmail: Text("กรุณา อย่าออกจากบ้าน 22.00 - 04.00 ค่ะ "),
          ),
          ListTile(
            title: Text("เช็ค ผู้ติดเชื้อล่าสุด"),
            subtitle: Text("show some "),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: showDrawer(),
        appBar: AppBar(
          title: Text("Welcome to App CheckCovid"),
        ),
        body: Center(
          child: showContent(),
        ));
  }
}
