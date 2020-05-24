//import 'package:covid/models/covid_day_model.dart';
import 'package:covid/models/covid_day_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CovidDay extends StatefulWidget {
  @override
  _CovidDayState createState() => _CovidDayState();
}

class _CovidDayState extends State<CovidDay> {

  @override
  void initState() {
    super.initState();
    loadData();
  }

  String confirmed,
      recovered,
      hospitalized,
      deaths,
      newConfirmed,
      newRecovered,
      newHospitalized,
      newDeaths,
      updateDate;


  Future<void> loadData() async {
    var response = await http.get("https://covid19.th-stat.com/api/open/today");
    var jsonBody = json.decode(response.body);
    CovidDayModel covidDayModel = CovidDayModel.fromJson(jsonBody);
    setState(() {
      confirmed = covidDayModel.confirmed.toString();
      recovered = covidDayModel.recovered.toString();
      hospitalized = covidDayModel.hospitalized.toString();
      deaths = covidDayModel.deaths.toString();
      newConfirmed = covidDayModel.newConfirmed.toString();
      newRecovered = covidDayModel.newRecovered.toString();
      newHospitalized = covidDayModel.newHospitalized.toString();
      newDeaths = covidDayModel.newDeaths.toString();
      updateDate = covidDayModel.updateDate.toString();
//      print(
//          '${confirmed} ${recovered} ${hospitalized} ${deaths} ${newConfirmed} ${newRecovered} ${newHospitalized} ${newDeaths} ${updateDate}');
    });
  }

  Widget showListTile(data , subtitle,) {
    return ListTile(
      leading: Icon(Icons.face),
      title: Text(data),
      subtitle: Text(subtitle),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CovidDay"),
      ),
      body: ListView(
        children: <Widget>[
          showListTile(confirmed??'รอโหลด', "ผู้ติดเชื่อทั้งหมด"),
          showListTile(recovered??'รอโหลด', "ผู้ที่ทำการรักษาแล้ว"),
          showListTile(hospitalized??'รอโหลด', "รักษาในโรงพยาบาล"),
          showListTile(deaths??'รอโหลด', "จำนวนผู้เสียชีวิต"),
          showListTile(newConfirmed??'รอโหลด', "ผู้ติดเชื้อรายใหม่"),
          showListTile(newRecovered??'รอโหลด', "ผู้รักษาหายรายใหม่"),
          showListTile(newDeaths??'รอโหลด', "จำนวนผู้เสียชีวิตรายใหม่"),
          showListTile(updateDate??'รอโหลด', "อัพเดทล่าสุด"),
        ],
      ),
    );
  }
}
