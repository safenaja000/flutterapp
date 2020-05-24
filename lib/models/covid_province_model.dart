class CovidProvinceModel {
  Province province;

  CovidProvinceModel({this.province});

  CovidProvinceModel.fromJson(Map<String, dynamic> json) {
    province = json['Province'] != null
        ? new Province.fromJson(json['Province'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.province != null) {
      data['Province'] = this.province.toJson();
    }
    return data;
  }
}

class Province {
  int bangkok;
  int phuket;
  int nonthaburi;
  int yala;
  int songkhla;
  int samutPrakan;
  int chonburi;
  int pattani;
  int chiangMai;
  int pathumThani;
  int narathiwat;
  int nakhonPathom;
  int chumphon;
  int krabi;
  int nakhonRatchasima;
  int satun;
  int suratThani;
  int prachuapKhiriKhan;
  int chachoengsao;
  int ubonRatchathani;
  int samutSakhon;
  int phatthalung;
  int buriram;
  int nakhonSiThammarat;
  int saKaeo;
  int nakhonSawan;
  int udonThani;
  int kanchanaburi;
  int chiangRai;
  int prachinburi;
  int surin;
  int sisaket;
  int ratchaburi;
  int trang;
  int khonKaen;
  int rayong;
  int suphanBuri;
  int phitsanulok;
  int loei;
  int maeHongSon;
  int saraburi;
  int phraNakhonSiAyutthaya;
  int lampang;
  int nongBuaLamphu;
  int lamphun;
  int mukdahan;
  int chanthaburi;
  int sukhothai;
  int phayao;
  int tak;
  int roiEt;
  int phetchabun;
  int uttaradit;
  int kalasin;
  int chaiyaphum;
  int nongKhai;
  int nakhonNayok;
  int phetchaburi;
  int nakhonPhanom;
  int lopburi;
  int amnatCharoen;
  int phangNga;
  int phrae;
  int sakonNakhon;
  int uthaiThani;
  int yasothon;
  int samutSongkhram;
  int mahaSarakham;

  Province(
      {this.bangkok,
      this.phuket,
      this.nonthaburi,
      this.yala,
      this.songkhla,
      this.samutPrakan,
      this.chonburi,
      this.pattani,
      this.chiangMai,
      this.pathumThani,
      this.narathiwat,
      this.nakhonPathom,
      this.chumphon,
      this.krabi,
      this.nakhonRatchasima,
      this.satun,
      this.suratThani,
      this.prachuapKhiriKhan,
      this.chachoengsao,
      this.ubonRatchathani,
      this.samutSakhon,
      this.phatthalung,
      this.buriram,
      this.nakhonSiThammarat,
      this.saKaeo,
      this.nakhonSawan,
      this.udonThani,
      this.kanchanaburi,
      this.chiangRai,
      this.prachinburi,
      this.surin,
      this.sisaket,
      this.ratchaburi,
      this.trang,
      this.khonKaen,
      this.rayong,
      this.suphanBuri,
      this.phitsanulok,
      this.loei,
      this.maeHongSon,
      this.saraburi,
      this.phraNakhonSiAyutthaya,
      this.lampang,
      this.nongBuaLamphu,
      this.lamphun,
      this.mukdahan,
      this.chanthaburi,
      this.sukhothai,
      this.phayao,
      this.tak,
      this.roiEt,
      this.phetchabun,
      this.uttaradit,
      this.kalasin,
      this.chaiyaphum,
      this.nongKhai,
      this.nakhonNayok,
      this.phetchaburi,
      this.nakhonPhanom,
      this.lopburi,
      this.amnatCharoen,
      this.phangNga,
      this.phrae,
      this.sakonNakhon,
      this.uthaiThani,
      this.yasothon,
      this.samutSongkhram,
      this.mahaSarakham});

  Province.fromJson(Map<String, dynamic> json) {
    bangkok = json['Bangkok'];
    phuket = json['Phuket'];
    nonthaburi = json['Nonthaburi'];
    yala = json['Yala'];
    songkhla = json['Songkhla'];
    samutPrakan = json['Samut Prakan'];
    chonburi = json['Chonburi'];
    pattani = json['Pattani'];
    chiangMai = json['Chiang Mai'];
    pathumThani = json['Pathum Thani'];
    narathiwat = json['Narathiwat'];
    nakhonPathom = json['Nakhon Pathom'];
    chumphon = json['Chumphon'];
    krabi = json['Krabi'];
    nakhonRatchasima = json['Nakhon Ratchasima'];
    satun = json['Satun'];
    suratThani = json['Surat Thani'];
    prachuapKhiriKhan = json['Prachuap Khiri Khan'];
    chachoengsao = json['Chachoengsao'];
    ubonRatchathani = json['Ubon Ratchathani'];
    samutSakhon = json['Samut Sakhon'];
    phatthalung = json['Phatthalung'];
    buriram = json['Buriram'];
    nakhonSiThammarat = json['Nakhon Si Thammarat'];
    saKaeo = json['Sa Kaeo'];
    nakhonSawan = json['Nakhon Sawan'];
    udonThani = json['Udon Thani'];
    kanchanaburi = json['Kanchanaburi'];
    chiangRai = json['Chiang Rai'];
    prachinburi = json['Prachinburi'];
    surin = json['Surin'];
    sisaket = json['Sisaket'];
    ratchaburi = json['Ratchaburi'];
    trang = json['Trang'];
    khonKaen = json['Khon Kaen'];
    rayong = json['Rayong'];
    suphanBuri = json['Suphan Buri'];
    phitsanulok = json['Phitsanulok'];
    loei = json['Loei'];
    maeHongSon = json['Mae Hong Son'];
    saraburi = json['Saraburi'];
    phraNakhonSiAyutthaya = json['Phra Nakhon Si Ayutthaya'];
    lampang = json['Lampang'];
    nongBuaLamphu = json['Nong Bua Lamphu'];
    lamphun = json['Lamphun'];
    mukdahan = json['Mukdahan'];
    chanthaburi = json['Chanthaburi'];
    sukhothai = json['Sukhothai'];
    phayao = json['Phayao'];
    tak = json['Tak'];
    roiEt = json['Roi Et'];
    phetchabun = json['Phetchabun'];
    uttaradit = json['Uttaradit'];
    kalasin = json['Kalasin'];
    chaiyaphum = json['Chaiyaphum'];
    nongKhai = json['Nong Khai'];
    nakhonNayok = json['Nakhon Nayok'];
    phetchaburi = json['Phetchaburi'];
    nakhonPhanom = json['Nakhon Phanom'];
    lopburi = json['Lopburi'];
    amnatCharoen = json['Amnat Charoen'];
    phangNga = json['Phang Nga'];
    phrae = json['Phrae'];
    sakonNakhon = json['Sakon Nakhon'];
    uthaiThani = json['Uthai Thani'];
    yasothon = json['Yasothon'];
    samutSongkhram = json['Samut Songkhram'];
    mahaSarakham = json['Maha Sarakham'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Bangkok'] = this.bangkok;
    data['Phuket'] = this.phuket;
    data['Nonthaburi'] = this.nonthaburi;
    data['Yala'] = this.yala;
    data['Songkhla'] = this.songkhla;
    data['Samut Prakan'] = this.samutPrakan;
    data['Chonburi'] = this.chonburi;
    data['Pattani'] = this.pattani;
    data['Chiang Mai'] = this.chiangMai;
    data['Pathum Thani'] = this.pathumThani;
    data['Narathiwat'] = this.narathiwat;
    data['Nakhon Pathom'] = this.nakhonPathom;
    data['Chumphon'] = this.chumphon;
    data['Krabi'] = this.krabi;
    data['Nakhon Ratchasima'] = this.nakhonRatchasima;
    data['Satun'] = this.satun;
    data['Surat Thani'] = this.suratThani;
    data['Prachuap Khiri Khan'] = this.prachuapKhiriKhan;
    data['Chachoengsao'] = this.chachoengsao;
    data['Ubon Ratchathani'] = this.ubonRatchathani;
    data['Samut Sakhon'] = this.samutSakhon;
    data['Phatthalung'] = this.phatthalung;
    data['Buriram'] = this.buriram;
    data['Nakhon Si Thammarat'] = this.nakhonSiThammarat;
    data['Sa Kaeo'] = this.saKaeo;
    data['Nakhon Sawan'] = this.nakhonSawan;
    data['Udon Thani'] = this.udonThani;
    data['Kanchanaburi'] = this.kanchanaburi;
    data['Chiang Rai'] = this.chiangRai;
    data['Prachinburi'] = this.prachinburi;
    data['Surin'] = this.surin;
    data['Sisaket'] = this.sisaket;
    data['Ratchaburi'] = this.ratchaburi;
    data['Trang'] = this.trang;
    data['Khon Kaen'] = this.khonKaen;
    data['Rayong'] = this.rayong;
    data['Suphan Buri'] = this.suphanBuri;
    data['Phitsanulok'] = this.phitsanulok;
    data['Loei'] = this.loei;
    data['Mae Hong Son'] = this.maeHongSon;
    data['Saraburi'] = this.saraburi;
    data['Phra Nakhon Si Ayutthaya'] = this.phraNakhonSiAyutthaya;
    data['Lampang'] = this.lampang;
    data['Nong Bua Lamphu'] = this.nongBuaLamphu;
    data['Lamphun'] = this.lamphun;
    data['Mukdahan'] = this.mukdahan;
    data['Chanthaburi'] = this.chanthaburi;
    data['Sukhothai'] = this.sukhothai;
    data['Phayao'] = this.phayao;
    data['Tak'] = this.tak;
    data['Roi Et'] = this.roiEt;
    data['Phetchabun'] = this.phetchabun;
    data['Uttaradit'] = this.uttaradit;
    data['Kalasin'] = this.kalasin;
    data['Chaiyaphum'] = this.chaiyaphum;
    data['Nong Khai'] = this.nongKhai;
    data['Nakhon Nayok'] = this.nakhonNayok;
    data['Phetchaburi'] = this.phetchaburi;
    data['Nakhon Phanom'] = this.nakhonPhanom;
    data['Lopburi'] = this.lopburi;
    data['Amnat Charoen'] = this.amnatCharoen;
    data['Phang Nga'] = this.phangNga;
    data['Phrae'] = this.phrae;
    data['Sakon Nakhon'] = this.sakonNakhon;
    data['Uthai Thani'] = this.uthaiThani;
    data['Yasothon'] = this.yasothon;
    data['Samut Songkhram'] = this.samutSongkhram;
    data['Maha Sarakham'] = this.mahaSarakham;
    return data;
  }
}