import 'package:covid/pages/showmap.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid/models/covid_location_model.dart';

class CovidLocation extends StatefulWidget {
  @override
  _CovidLocationState createState() => _CovidLocationState();
}

class _CovidLocationState extends State<CovidLocation> {
  List<CovidLocationModel> covidLocationModels = List();
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    Firestore firestore = Firestore.instance;
    CollectionReference collectionReference = firestore.collection('Location');
    await collectionReference.snapshots().listen((respone) {
      List<DocumentSnapshot> snapshots = respone.documents;
      for (var snapshot in snapshots) {
        CovidLocationModel covidLocationModel =
            CovidLocationModel.formMap(snapshot.data);
        setState(() {
          covidLocationModels.add(covidLocationModel);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
      ),
      body: ListView.builder(
        itemCount: covidLocationModels.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShowMap(
                    lat: covidLocationModels[index].lat,
                    lng: covidLocationModels[index].lng,
                    date: covidLocationModels[index].date,
                  ),
                ),
              );
            },
            title: Text(covidLocationModels[index].date),
            leading: Icon(Icons.face),
            subtitle: Text(
                " ลัตติจูตที่ : ${covidLocationModels[index].lat} ลองติจูตที่ : ${covidLocationModels[index].lng}"),
          );
        },
      ),
    );
  }
}
