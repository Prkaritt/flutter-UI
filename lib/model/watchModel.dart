class WatchModel{
    final String id;
    final String  brandName;
    final String description;
    final List<String> features;
    final String image;

    const WatchModel(this.id,this.image,this.brandName, this.description, this.features);
}

const watches = [
  WatchModel("1","assets/images/g1.jpg","Nike", "Made in U.S.A, this the the best selling watch in the world", [
    "Made in Usa","10 years battery","20 years Warranty","NationWide Service Centres"
  ]),
  WatchModel("2","assets/images/g3.jpg","Apple", "Made in Cupertino, this is the first and the best smartwatch in the world", ["Made By Apple","Health and fitness","All day battery","Best in class"]),
  WatchModel("3","assets/images/g4.jpg","Ghadi", "Made in Nepal, this is the watch crafted with love which can be felt", ["Made In Nepal","10 years battery","20 years warranty","Nationwide Service Centres"]),
  WatchModel("4","assets/images/g2.jpg","Eiffel", "Made in France, this is the most stylish watch in the cllass. ", ["Most expensive watch award","Not affordable","Show your style","good For Show-off"])
];