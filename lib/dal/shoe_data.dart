import '../model/shoe.dart';

class ShoeData{
  static List<Shoe> getALlShoes() {
    List<Shoe> shoeList = [
      Shoe(imagePath: "assets/adidas.jpg", name: "Adidas", description: "4DFWD 2 W"),
      Shoe(imagePath: "assets/hoka.jpg", name: "Hoka One", description: "One MAFATE SPEED 4"),
      Shoe(imagePath: "assets/underarmor.jpg", name: "Under Armour", description: "W CHARGED BREEZE 2"),
      Shoe(imagePath: "assets/mizuno.jpg", name: "Mizuno ", description: "WAVE DAICHI 7"),
      Shoe(imagePath: "assets/salomon.jpg", name: "Salomon", description: "SENSE RIDE 5 W"),
      Shoe(imagePath: "assets/saucony.jpg", name: "Saucony", description: "KINVARA 14"),
      Shoe(imagePath: "assets/nike.jpeg", name: "Nike", description: "ZOOMX INVINCIBLE RUN FK 3"),
      Shoe(imagePath: "assets/asics.jpg", name: "Asics", description: "GEL-CUMULUS 25"),
      Shoe(imagePath: "assets/joma.jpg", name: "Joma", description: "TK SIMA 2322"),
      Shoe(imagePath: "assets/salewa.jpg", name: "Salewa", description: "DROPLINE GTX W"),
      Shoe(imagePath: "assets/puma.jpg", name: "Puma", description: "RUN XX NITRO WNS"),
      Shoe(imagePath: "assets/underarmor2.jpg", name: "Under Armour", description: "W CHARGED BANDIT TR 2 SP")
    ];
    return shoeList;
  }
}