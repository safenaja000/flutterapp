class CovidLocationModel {
  String date;
  dynamic lat,lng;

  CovidLocationModel(this.lat,this.lng,this.date);

  CovidLocationModel.formMap(Map<String,dynamic> map){
    lat = map['lat'];
    lng = map['lng'];
    date = map['date'];
  }
}