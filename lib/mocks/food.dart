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
      picturePath: "https://pbs.twimg.com/media/CKfviQqUcAAUNHP.jpg",
      name: "Bandros Atta",
      description:
          "Bandros adalah panganan berupa kue berbahan utama tepung terigu, telur, mentega, gula, dan parutan kelapa. Meski terbuat dari adonan yang sederhana, tapi saat dikunyah sangat terasa lembut dan gurih, membuat panganan ini sangat banyak penggemarnya. Sementara Bandrek adalah minuman yang terbuat dari campuran gula merah dan jahe, ditambah dengan sedikit rempah-rempah untuk menambah aroma dan rasa yang dapat menggugah selera. Panganan dan minuman khas Sukabumi ini paling pas dinikmati saat panas atau hangat.",
      ingredients: "tepung terigu, telur, mentega, gula, dan parutan kelapa.",
      price: 15000,
      rate: 4.1,
      types: [FoodType.new_food, FoodType.popular, FoodType.recomended]),
  Food(
      id: 2,
      picturePath:
          "https://www.javatravel.net/wp-content/uploads/2020/01/Sekoteng-Singapore.jpg",
      name: "Sekoteng Singapore",
      description: "Kuah sekoteng singapore seperti pada umumnya di daerah lain Indonesia yaitu air gula dengan campuran jahe dan susu. Sekoteng singapore terkenal sangat enak, rasa manis dengan citarasa menghangatkan tubuh dari jahe.",
      ingredients: "tepung terigu, telur, mentega, gula, dan parutan kelapa.",
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
      picturePath: "https://7terbaik.com/wp-content/uploads/2018/12/Surabi-Sukabumi.jpg",
      name: "Surabi",
      description:
          "Surabi merupakan salah satu kuliner yang paling tersohor di daerah Jawa Barat, termasuk Sukabumi. Ketika berada disini pun, Anda bisa menemukan surabi yang khas dan beda dengan daerah lain. Pembeda tersebut adalah surabi di Sukabumi ini terbuar dari durian yang merupakan salah satu kuliner yang wajib dicoba jika Anda merupakan pecinta durian.",
      ingredients: "Tepung Terigu, Mentega, Coklat, Keju",
      price: 15000,
      rate: 4.1,
      types: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath: "https://tempatwisataindonesia.id/wp-content/uploads/2017/08/wedang_ronde.jpg",
      name: "Wedang Ronde",
      description:
          "Makanan khas Kab Sukabumi yang satu ini dijual di warung makan bandros mang Atta juga. Kawasan kuliner yang kerap menjadi tempat nongkrong anak muda ini hanya berada di trotoar pinggir jalan. Namun selalu ramai dikunjungi oleh pembeli. Di warung ini, selain kamu bisa mencicipi bandros dan wedang jahe, kamu juga harus mencicipi wedang ronde yang merupakan minuman penghangat tubuh. Wedang ronde ini hanya bisa kamu dapatkan di malam hari saja.",
      ingredients: "Tepung Terigu, Mentega, Coklat, Keju",
      price: 15000,
      rate: 4.1,
      types: [FoodType.recomended]),
  Food(
      id: 5,
      picturePath: "https://s1.bukalapak.com/img/1435928552/large/IMG74203_90657290.jpg",
      name: "Nasi Uduk Ungu",
      description:
          "Makanan nasi yang berwarna ungu ini merupakan campuran dari buah ubi ungu dan juga buah bit sehingga membuat nasi tersebut berwarna ungu dan berbeda dengan nasi pada umumnya. Disajikan dengan ayam, tahu, tempe dan lalapan segar lain tentu akan menggugah selera makan anda.",
      ingredients: "Tepung Terigu, Mentega, Coklat, Keju",
      price: 15000,
      rate: 4.1),
];
