part of 'models.dart';

enum FoodType { new_food, popular, recomended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  @override
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath: "https://img-global.cpcdn.com/recipes/0b384004a8b85689/751x532cq70/%F0%9D%90%82%F0%9D%90%9E%F0%9D%90%A5%F0%9D%90%A2%F0%9D%90%A6%F0%9D%90%A9%F0%9D%90%AE%F0%9D%90%A7%F0%9D%90%A0%F0%9D%90%9A%F0%9D%90%A7-foto-resep-utama.jpg",
      name: "Celimpungan",
      description:
          "Pempek Kuah Santan",
      ingredients: "Pempek:\n250 gram ikan,\n1 putih telur,\n150 ml air,\n3 siung bawang putih-haluskan, 1 .sdt garam,\n250-300 gram sagu tani.\n\nBahan Kuah:\n600 ml air,\n100 ml santan,\n3 butir kemiri,\n1/2 ruas jari kunyit,\n4 siung bawang merah,\n4 siung bawang putih,\n1 genggam ebi,\nSecukupnya garam dan lada",
      price: 15000,
      rate: 4.1,
      types: [FoodType.new_food, FoodType.popular, FoodType.recomended]),
  Food(
      id: 2,
      picturePath:
          "https://img-global.cpcdn.com/recipes/f4c612bf3a7d4fde/751x532cq70/laksan-palembang-foto-resep-utama.jpg",
      name: "Laksan",
      description: "",
      ingredients: "1/4 kg pempek ikan,\n6 buah bawang merah, \n4 buah bawang putih,\n8 buah cabe merah,\n5 buah kemiri,\n1 sdt ketumbar,\n1 ruas jari telunjuk jahe,\n2 batang serai,\n3 lembar daun salam,\n2 lembar daun jeruk,\n1 batang daun kari,\n10 sdm Fibercream (pengganti santan),\n1 sdm Penyedap jamur",
      price: 15000,
      rate: 4.1,
      types: [FoodType.new_food, FoodType.popular, FoodType.recomended]),
  Food(
      id: 2,
      picturePath:
          "https://www.javatravel.net/wp-content/uploads/2020/01/Kue-Mochi-Lampion.jpg",
      name: "Mochi Lampion",
      description:
          "Bandros Atta adalah sejenis kue yang terkenal di Sukabumi, Jawa Barat",
      ingredients: "Tepung Terigu, Mentega, Coklat, Keju",
      price: 15000,
      rate: 4.1),
  Food(
      id: 3,
      picturePath:
          "https://7terbaik.com/wp-content/uploads/2018/12/Surabi-Sukabumi.jpg",
      name: "Surabi",
      description:
          "Surabi merupakan salah satu kuliner yang paling tersohor di daerah Jawa Barat, termasuk Sukabumi. Ketika berada disini pun, Anda bisa menemukan surabi yang khas dan beda dengan daerah lain. Pembeda tersebut adalah surabi di Sukabumi ini terbuar dari durian yang merupakan salah satu kuliner yang wajib dicoba jika Anda merupakan pecinta durian.",
      ingredients: "Tepung Terigu, Mentega, Coklat, Keju",
      price: 15000,
      rate: 4.1,
      types: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath:
          "https://1.bp.blogspot.com/-iA5TZmNo5so/XJm0JSM2QgI/AAAAAAAAAls/CkraB7ukNV0z9c12NJT7g8W6Hsw2HZGGgCLcBGAs/s1600/kue%2Bjahe.jpg",
      name: "Sagon Bakar",
      description: "Makanan ini terbuat dari kelapa, aci dan bahan-bahan lainnya. Sagon Bakar Ciaul sendiri merupakan makanan khas Sukabumi yang mempunyai cita rasa yang gurih dan renyah. Terdapat berbagai macam rasa di antaranya rasa original, cokelat, kopi, keju dan masih banyak lagi. Sagon Bakar Ciaul baik untuk kamu yang memiliki alergi dengan terigu (gluten) dan sedang diet rendah lemak. Lemak yang terdapat pada kelapa berkurang saat proses pengovenan..",
      ingredients: "Kelapa, Aci",
      price: 15000,
      rate: 4.1,
      types: [FoodType.recomended]),
  Food(
      id: 5,
      picturePath:
          "https://s1.bukalapak.com/img/1435928552/large/IMG74203_90657290.jpg",
      name: "Nasi Uduk Ungu",
      description:
          "Makanan nasi yang berwarna ungu ini merupakan campuran dari buah ubi ungu dan juga buah bit sehingga membuat nasi tersebut berwarna ungu dan berbeda dengan nasi pada umumnya. Disajikan dengan ayam, tahu, tempe dan lalapan segar lain tentu akan menggugah selera makan anda.",
      ingredients: "Tepung Terigu, Mentega, Coklat, Keju",
      price: 15000,
      rate: 4.1),
];
