class CardsData {
  final String name;
  final String Image_path;
  CardsData({required this.name, required this.Image_path});
}

List<CardsData> card_data_list = [
  CardsData(name: "Smart Light", Image_path: "images/light-bulb.png"),
  CardsData(name: "Smart AC", Image_path: "images/air-conditioner.png"),
  CardsData(name: "Smart TV", Image_path: "images/smart-tv.png"),
  CardsData(name: "Smart AC", Image_path: "images/fan.png"),
];
