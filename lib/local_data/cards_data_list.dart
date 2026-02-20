class CardsData {
  final String name;
  final String Image_path;
  CardsData({required this.name, required this.Image_path});
}

List<CardsData> card_data_list = [
  CardsData(name: "Light", Image_path: "images/light-bulb.png"),
  CardsData(name: "AC", Image_path: "images/air-conditioner.png"),
  CardsData(name: "TV", Image_path: "images/smart-tv.png"),
  CardsData(name: "Fan", Image_path: "images/fan.png"),
];
