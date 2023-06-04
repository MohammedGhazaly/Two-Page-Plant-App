class Plant {
  final String imgPath;
  final String plantOwner;
  final String ownerCountry;
  final double plantPrice;
  Plant(
      {required this.imgPath,
      required this.plantOwner,
      required this.ownerCountry,
      required this.plantPrice});
}

List<Plant> plantData = [
  Plant(
      imgPath: "assets/images/image_1.png",
      plantOwner: "Samantha",
      ownerCountry: "Russia",
      plantPrice: 400),
  Plant(
      imgPath: "assets/images/image_2.png",
      plantOwner: "Angelica",
      ownerCountry: "America",
      plantPrice: 900),
  Plant(
      imgPath: "assets/images/image_3.png",
      plantOwner: "Fatima",
      ownerCountry: "Egypt",
      plantPrice: 1000),
];
