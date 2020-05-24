import 'package:covid/models/covid_province_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CovidProvince extends StatefulWidget {
  @override
  _CovidProvinceState createState() => _CovidProvinceState();
}

class _CovidProvinceState extends State<CovidProvince> {
  String bangkok;
  String phuket;
  String nonthaburi;
  String yala;
  String songkhla;
  String samutPrakan;
  String chonburi;
  String pattani;
  String chiangMai;
  String pathumThani;
  String narathiwat;
  String nakhonPathom;
  String chumphon;
  String krabi;
  String nakhonRatchasima;
  String satun;
  String suratThani;
  String prachuapKhiriKhan;
  String chachoengsao;
  String ubonRatchathani;
  String samutSakhon;
  String phatthalung;
  String buriram;
  String nakhonSiThammarat;
  String saKaeo;
  String nakhonSawan;
  String udonThani;
  String kanchanaburi;
  String chiangRai;
  String prachinburi;
  String surin;
  String sisaket;
  String ratchaburi;
  String trang;
  String khonKaen;
  String rayong;
  String suphanBuri;
  String phitsanulok;
  String loei;
  String maeHongSon;
  String saraburi;
  String phraNakhonSiAyutthaya;
  String lampang;
  String nongBuaLamphu;
  String lamphun;
  String mukdahan;
  String chanthaburi;
  String sukhothai;
  String phayao;
  String tak;
  String roiEt;
  String phetchabun;
  String uttaradit;
  String kalasin;
  String chaiyaphum;
  String nongKhai;
  String nakhonNayok;
  String phetchaburi;
  String nakhonPhanom;
  String lopburi;
  String amnatCharoen;
  String phangNga;
  String phrae;
  String sakonNakhon;
  String uthaiThani;
  String yasothon;
  String samutSongkhram;
  String mahaSarakham;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    var response =
        await http.get("https://covid19.th-stat.com/api/open/cases/sum");
    var jsonBody = json.decode(response.body);
    CovidProvinceModel covidProvinceModel =
        CovidProvinceModel.fromJson(jsonBody);
    setState(() {
      bangkok = covidProvinceModel.province.bangkok.toString();
      phuket = covidProvinceModel.province.phuket.toString();
      nonthaburi = covidProvinceModel.province.nonthaburi.toString();
      yala = covidProvinceModel.province.yala.toString();
      songkhla = covidProvinceModel.province.songkhla.toString();
      samutPrakan = covidProvinceModel.province.samutPrakan.toString();
      chonburi = covidProvinceModel.province.chonburi.toString();
      pattani = covidProvinceModel.province.pattani.toString();
      chiangMai = covidProvinceModel.province.chiangMai.toString();
      pathumThani = covidProvinceModel.province.pathumThani.toString();
      narathiwat = covidProvinceModel.province.narathiwat.toString();
      nakhonPathom = covidProvinceModel.province.nakhonPathom.toString();
      chumphon = covidProvinceModel.province.chumphon.toString();
      krabi = covidProvinceModel.province.krabi.toString();
      nakhonRatchasima =
          covidProvinceModel.province.nakhonRatchasima.toString();
      satun = covidProvinceModel.province.satun.toString();
      suratThani = covidProvinceModel.province.suratThani.toString();
      prachuapKhiriKhan =
          covidProvinceModel.province.prachuapKhiriKhan.toString();
      chachoengsao = covidProvinceModel.province.chachoengsao.toString();
      ubonRatchathani = covidProvinceModel.province.ubonRatchathani.toString();
      samutSakhon = covidProvinceModel.province.samutSakhon.toString();
      phatthalung = covidProvinceModel.province.phatthalung.toString();
      nakhonSiThammarat =
          covidProvinceModel.province.nakhonSiThammarat.toString();
      saKaeo = covidProvinceModel.province.saKaeo.toString();
      nakhonSawan = covidProvinceModel.province.nakhonSawan.toString();
      udonThani = covidProvinceModel.province.udonThani.toString();
      kanchanaburi = covidProvinceModel.province.kanchanaburi.toString();
      chiangRai = covidProvinceModel.province.chiangRai.toString();
      prachinburi = covidProvinceModel.province.prachinburi.toString();
      surin = covidProvinceModel.province.surin.toString();
      sisaket = covidProvinceModel.province.sisaket.toString();
      ratchaburi = covidProvinceModel.province.ratchaburi.toString();
      trang = covidProvinceModel.province.trang.toString();
      khonKaen = covidProvinceModel.province.khonKaen.toString();
      rayong = covidProvinceModel.province.rayong.toString();
      suphanBuri = covidProvinceModel.province.suphanBuri.toString();
      phitsanulok = covidProvinceModel.province.phitsanulok.toString();
      loei = covidProvinceModel.province.loei.toString();
      maeHongSon = covidProvinceModel.province.maeHongSon.toString();
      saraburi = covidProvinceModel.province.saraburi.toString();
      phraNakhonSiAyutthaya =
          covidProvinceModel.province.phraNakhonSiAyutthaya.toString();
      lampang = covidProvinceModel.province.lampang.toString();
      nongBuaLamphu = covidProvinceModel.province.nongBuaLamphu.toString();
      lamphun = covidProvinceModel.province.lamphun.toString();
      mukdahan = covidProvinceModel.province.mukdahan.toString();
      chanthaburi = covidProvinceModel.province.chanthaburi.toString();
      sukhothai = covidProvinceModel.province.sukhothai.toString();
      phayao = covidProvinceModel.province.phayao.toString();
      tak = covidProvinceModel.province.tak.toString();
      roiEt = covidProvinceModel.province.roiEt.toString();
      phetchabun = covidProvinceModel.province.phetchabun.toString();
      uttaradit = covidProvinceModel.province.uttaradit.toString();
      kalasin = covidProvinceModel.province.kalasin.toString();
      chaiyaphum = covidProvinceModel.province.chaiyaphum.toString();
      nongKhai = covidProvinceModel.province.nongKhai.toString();
      nakhonNayok = covidProvinceModel.province.nakhonNayok.toString();
      phetchaburi = covidProvinceModel.province.phetchaburi.toString();
      nakhonPhanom = covidProvinceModel.province.nakhonPhanom.toString();
      lopburi = covidProvinceModel.province.lopburi.toString();
      amnatCharoen = covidProvinceModel.province.amnatCharoen.toString();
      phangNga = covidProvinceModel.province.phangNga.toString();
      phrae = covidProvinceModel.province.phrae.toString();
      sakonNakhon = covidProvinceModel.province.sakonNakhon.toString();
      uthaiThani = covidProvinceModel.province.uthaiThani.toString();
      yasothon = covidProvinceModel.province.yasothon.toString();
      samutSongkhram = covidProvinceModel.province.samutSongkhram.toString();
      mahaSarakham = covidProvinceModel.province.mahaSarakham.toString();
    });
  }

  Widget showListTile(subtitle,String data ) {
    return ListTile(
      leading: Icon(Icons.face),
      title: Text(data),
      subtitle: Text("ผู้ติดเชื้อ ${subtitle} คน"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Province"),
      ),
      body: ListView(
        children: <Widget>[
          showListTile(bangkok??"รอโหลด","bangkok"),
          showListTile(phuket??"รอโหลด","phuket"),
          showListTile(nonthaburi??"รอโหลด","nonthaburi"),
          showListTile(yala??"รอโหลด","yala"),
          showListTile(songkhla??"รอโหลด","songkhla"),
          showListTile(samutPrakan??"รอโหลด","samutPrakan"),
          showListTile(chonburi??"รอโหลด","chonburi"),
          showListTile(pattani??"รอโหลด","pattani"),
          showListTile(chiangMai??"รอโหลด","chiangMai"),
          showListTile(pathumThani??"รอโหลด","pathumThani"),
          showListTile(narathiwat??"รอโหลด","narathiwat"),
          showListTile(nakhonPathom??"รอโหลด","nakhonPathom"),
          showListTile(chumphon??"รอโหลด","chumphon"),
          showListTile(krabi??"รอโหลด","krabi"),
          showListTile(nakhonRatchasima??"รอโหลด","nakhonRatchasima"),
          showListTile(satun??"รอโหลด","satun"),
          showListTile(suratThani??"รอโหลด","suratThani"),
          showListTile(prachuapKhiriKhan??"รอโหลด","prachuapKhiriKhan"),
          showListTile(chachoengsao??"รอโหลด","chachoengsao"),
          showListTile(ubonRatchathani??"รอโหลด","ubonRatchathani"),
          showListTile(samutSakhon??"รอโหลด","samutSakhon"),
          showListTile(phatthalung??"รอโหลด","phatthalung"),
          showListTile(nakhonSiThammarat??"รอโหลด","nakhonSiThammarat"),
          showListTile(saKaeo??"รอโหลด","saKaeo"),
          showListTile(nakhonSawan??"รอโหลด","nakhonSawan"),
          showListTile(udonThani??"รอโหลด","udonThani"),
          showListTile(kanchanaburi??"รอโหลด","kanchanaburi"),
          showListTile(chiangRai??"รอโหลด","chiangRai"),
          showListTile(prachinburi??"รอโหลด","prachinburi"),
          showListTile(surin??"รอโหลด","surin"),
          showListTile(sisaket??"รอโหลด","sisaket"),
          showListTile(ratchaburi??"รอโหลด","ratchaburi"),
          showListTile(trang??"รอโหลด","trang"),
          showListTile(khonKaen??"รอโหลด","khonKaen"),
          showListTile(rayong??"รอโหลด","rayong"),
          showListTile(suphanBuri??"รอโหลด","suphanBuri"),
          showListTile(phitsanulok??"รอโหลด","phitsanulok"),
          showListTile(loei??"รอโหลด","loei"),
          showListTile(maeHongSon??"รอโหลด","maeHongSon"),
          showListTile(saraburi??"รอโหลด","saraburi"),
          showListTile(phraNakhonSiAyutthaya??"รอโหลด","phraNakhonSiAyutthaya"),
          showListTile(nongBuaLamphu??"รอโหลด","nongBuaLamphu"),
          showListTile(lamphun??"รอโหลด","lamphun"),
          showListTile(mukdahan??"รอโหลด","mukdahan"),
          showListTile(sukhothai??"รอโหลด","sukhothai"),
          showListTile(phayao??"รอโหลด","phayao"),
          showListTile(roiEt??"รอโหลด","roiEt"),
          showListTile(phetchabun??"รอโหลด","phetchabun"),
          showListTile(uttaradit??"รอโหลด","uttaradit"),
          showListTile(chaiyaphum??"รอโหลด","chaiyaphum"),
          showListTile(nongKhai??"รอโหลด","nongKhai"),
          showListTile(nakhonNayok??"รอโหลด","nakhonNayok"),
          showListTile(phetchaburi??"รอโหลด","phetchaburi"),
          showListTile(nakhonPhanom??"รอโหลด","nakhonPhanom"),
          showListTile(lopburi??"รอโหลด","lopburi"),
          showListTile(amnatCharoen??"รอโหลด","amnatCharoen"),
          showListTile(phangNga??"รอโหลด","phangNga"),
          showListTile(phrae??"รอโหลด","phrae"),
          showListTile(sakonNakhon??"รอโหลด","sakonNakhon"),
          showListTile(uthaiThani??"รอโหลด","uthaiThani"),
          showListTile(yasothon??"รอโหลด","yasothon"),
          showListTile(samutSongkhram??"รอโหลด","samutSongkhram"),
          showListTile(mahaSarakham??"รอโหลด","mahaSarakham"),
        ],
      ),
    );
  }
}
