class Offerimage {
  static const i1 =
      "https://miro.medium.com/v2/resize:fit:800/0*Br1pcGDQSWIStxf_.jpg";
}

class AppiMages {
  static final items = [
    Items(
        img:
            "https://www.holidify.com/images/cmsuploads/compressed/IndianStreetFood_20190103005627.jpg",
        id: "1", name: 'Dahi Puri'),
    Items(
        img:
            "https://asset20.ckassets.com/blog/wp-content/uploads/sites/5/2019/12/Onion-Dosa.jpg",
        id: "2", name: 'Dhosa'),
    Items(
        img:
            "https://images.news18.com/ibnlive/uploads/2021/01/1610716314_untitled-design-2021-01-15t184025.049.jpg",
        id: "3", name: 'Pizza'),
    Items(
        img:
            "https://static-ssl.businessinsider.com/image/5a7dc169d03072af008b4bf2-807/red%20robin%20.jpg",
        id: "4", name: 'Burger'),
    Items(
        img:
            "https://d2rdhxfof4qmbb.cloudfront.net/wp-content/uploads/20200825162617/iStock-980462262.jpg",
        id: "5", name: 'Seafood'),
    Items(
        img:
            "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/03501c33ecb3a3105124441e541e6fe4",
        id: "6", name: 'MealPack'),
  ];
}

class Items {
  final String img;
  final String id;
  final String name;

  Items({
    required this.name,
    required this.img,
    required this.id,
  });
}

class Appitem {
  static final foods = [
    Foods(
        img:
            "https://media.istockphoto.com/id/938742222/photo/cheesy-pepperoni-pizza.jpg?s=612x612&w=0&k=20&c=D1z4xPCs-qQIZyUqRcHrnsJSJy_YbUD9udOrXpilNpI=",
        name: "Margerita Pizza",
        vdrnvg: "Pizza.Italiyan.Veg",
        rating: "3.9"),//1
    Foods(
        img:
            "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/k4nkf2x7cypi7ioacb6m",
        name: "Pav-Bhaji",
        vdrnvg: "Spicy.Red Bhaji",
        rating: "4.5"),//2
    Foods(
        img:
        "https://www.vegrecipesofindia.com/wp-content/uploads/2021/02/matar-paneer-2-500x375.jpg",
        name: "Matar Paneer",
        vdrnvg: "Paneer.Punjabi.Veg",
        rating: "3.7"),//3
    Foods(
        img:
        "https://i.ytimg.com/vi/csfIOfMnRGg/maxresdefault.jpg",
        name: "Chole Bhature",
        vdrnvg: "Spicy.Red Chole",
        rating: "4.4"),//4
    Foods(
        img:
        "https://images.herzindagi.info/image/2018/Sep/egg-curry-for-you.jpg",
        name: "Egg Cury",
        vdrnvg: "Egg.Spicy.Veg",
        rating: "4.0"),//5
    Foods(
        img:
        "https://myfoodstory.com/wp-content/uploads/2018/08/Dal-Makhani-New-3.jpg",
        name: "Daal Makhni",
        vdrnvg: "Spicy.Brown Gravy",
        rating: "4.7"),//6
    Foods(
        img:
        "https://www.licious.in/blog/wp-content/uploads/2021/09/shutterstock_1650877375.jpg",
        name: "Dry Manchurian",
        vdrnvg: "Manchurian.Chines.Veg",
        rating: "4.5"),//7
    Foods(
        img:
        "https://mojo.generalmills.com/api/public/content/4CMKPZVNL0GUrV990-AY0Q_gmi_hi_res_jpeg.jpeg?v=dd9707c1&t=466b54bb264e48b199fc8e83ef1136b4",
        name: "Fudge ice-Cream",
        vdrnvg: "Sweet.Dessert",
        rating: "4.5"),//8
    Foods(
        img:
        "https://www.foodandwine.com/thmb/8YAIANQTZnGpVWj2XgY0dYH1V4I=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/spicy-chicken-curry-FT-RECIPE0321-58f84fdf7b484e7f86894203eb7834e7.jpg",
        name: "Chicken curry",
        vdrnvg: "Chicken.NonVeg.Red Gravey",
        rating: "3.9"),//9
    Foods(
        img:
        "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/k4nkf2x7cypi7ioacb6m",
        name: "Pav-Bhaji",
        vdrnvg: "Spicy.Red Bhaji",
        rating: "4.5"),//10
  ];
}

class Foods {
  final String img;
  final String name;
  final String vdrnvg;
  final String rating;

  Foods({
    required this.img,
    required this.name,
    required this.vdrnvg,
    required this.rating,
  });
}

List<Appitem> Foodind = [];