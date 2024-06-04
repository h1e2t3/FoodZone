import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class favourtitecontroller extends GetxController {
  RxList<String> mainimg_list = [
    "https://media.istockphoto.com/id/938742222/photo/cheesy-pepperoni-pizza.jpg?s=612x612&w=0&k=20&c=D1z4xPCs-qQIZyUqRcHrnsJSJy_YbUD9udOrXpilNpI=",
    "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_1024/k4nkf2x7cypi7ioacb6m",
    "https://www.vegrecipesofindia.com/wp-content/uploads/2021/02/matar-paneer-2-500x375.jpg",
    "https://i.ytimg.com/vi/csfIOfMnRGg/maxresdefault.jpg",
    "https://images.herzindagi.info/image/2018/Sep/egg-curry-for-you.jpg",
    "https://myfoodstory.com/wp-content/uploads/2018/08/Dal-Makhani-New-3.jpg",
    "https://www.licious.in/blog/wp-content/uploads/2021/09/shutterstock_1650877375.jpg",
    "https://mojo.generalmills.com/api/public/content/4CMKPZVNL0GUrV990-AY0Q_gmi_hi_res_jpeg.jpeg?v=dd9707c1&t=466b54bb264e48b199fc8e83ef1136b4",
    "https://www.foodandwine.com/thmb/8YAIANQTZnGpVWj2XgY0dYH1V4I=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/spicy-chicken-curry-FT-RECIPE0321-58f84fdf7b484e7f86894203eb7834e7.jpg",
    "https://res.cloudinary.com/purnesh/image/upload/w_1080,f_auto/butterfly-chicken-burger.jpg",
  ].obs;
  RxList<String> MainimgNm_list = [
    "Pizza",
    "Pav-Bhaji",
    "Matar Paneer",
    "Chole Bhature",
    "Egg-Curry",
    "Dal-Makhni",
    "Manchurian",
    "Dessert",
    "Butter Chiken",
    "Chicken Burger"
  ].obs;
  RxList<String> MainRating_list = [
    "4.3",
    "3.5",
    "4.7",
    "4.0",
    "3.6",
    "4.3",
    "3.5",
    "4.7",
    "4.0",
    "3.6"
  ].obs;
  RxList<String> MainVeg_list = [
    "Veg.Italian",
    "Veg.StreetFood",
    "Veg.Punjabi",
    "Veg.StreetFood",
    "NonVeg.StreetFood",
    "Veg.Punjabi",
    "Veg.Chines",
    "Dessert",
    "NonVeg.Chicken",
    "NonVeg.Chicken"
  ].obs;
  RxList<int> MainPrice_list = [
    199,
    120,
    180,
    80,
    130,
    110,
    120,
    90,
    230,
    99
  ].obs;
  RxList<String> testlist=[
    "Regular",
    "Medium",
    "Spicy",
    "Extra Spicy",
  ].obs;

  RxList foodlist = [].obs;

  addtofavourite(String value) {
    foodlist.add(value);
  }

  removetofavourite(String value) {
    foodlist.remove(value);
  }
}
