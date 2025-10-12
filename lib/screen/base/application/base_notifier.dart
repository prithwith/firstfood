// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/fooditems_model.dart';
import 'package:fastfood/core/model/user_model.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/screen/base/application/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BaseNotifier extends StateNotifier<BaseState> {
  BaseNotifier(this._dio, this._hiveDataBase) : super(const BaseState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  void updateBottomIndex(int index) {
    state = state.copyWith(bottomNavIndex: index);
  }

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController address1Controller = TextEditingController();
  final TextEditingController address2Controller = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController zipController = TextEditingController();

  Future<void> getUserInfo() async {
    final UserModel dummyUsersInfo = UserModel(
      name: "Prithwith Sahoo",
      email: "windows000x@example.com",
      phone: "+91 9878456532",
      profileImageUrl: "${AppAssets.appImages}app_icon.png",
      defaultAddressLine1: "123 Main Street",
      defaultAddressLine2: "Apt 4B",
      defaultAddressCity: "Springfield, IL 62704",
      defaultAddressZip: "USA",
    );

    state = state.copyWith(currentUser: dummyUsersInfo);

    nameController.text = state.currentUser?.name ?? "";
    emailController.text = state.currentUser?.email ?? "";
    numberController.text = state.currentUser?.phone ?? "";
    address1Controller.text = state.currentUser?.defaultAddressLine1 ?? "";
    address2Controller.text = state.currentUser?.defaultAddressLine2 ?? "";
    cityController.text = state.currentUser?.defaultAddressCity ?? "";
    zipController.text = state.currentUser?.defaultAddressZip ?? "";
  }

  void updateProfile({VoidCallback? onTap, String? profilePicture}) {
    final UserModel dummyUpdatedUsersInfo = UserModel(
      name: nameController.text,
      email: emailController.text,
      phone: numberController.text,
      profileImageUrl: profilePicture,
      defaultAddressLine1: address1Controller.text,
      defaultAddressLine2: address2Controller.text,
      defaultAddressCity: cityController.text,
      defaultAddressZip: zipController.text,
    );

    state = state.copyWith(currentUser: dummyUpdatedUsersInfo);

    showToastMessage("Profile update Successfull");
    onTap?.call();
  }

  void getAllFoodItemsData() {
    final List<FooditemsModel> tempFoodItems = [];

    tempFoodItems.addAll([
      FooditemsModel(
        id: "1",
        image: '${AppAssets.appImages}fresh_fruits.jpeg',
        title: 'Crazy Taco',
        subtitle: 'Delicious tacos, appetizers...',
        price: '300',
        time: '40-50min',
        rating: '9.5',
        badge: '300 off delivery',
        places: '36 places',
        priceLevel: "50",
        restaurant: "Dam Biriyani",
        isLiked: true,
      ),
      FooditemsModel(
        id: "2",
        image: '${AppAssets.appImages}pizza.jpg',
        title: 'Hot Pizza',
        subtitle: 'Cheesy pizza with fresh toppings',
        price: '800',
        time: '30-40min',
        rating: '9.2',
        badge: 'Free garlic bread',
        places: '24 places',
        priceLevel: "80",
        restaurant: "Mario’s Pizza",
        isLiked: false,
      ),
      FooditemsModel(
        id: "3",
        image: '${AppAssets.appImages}cheeseburger.jpeg',
        title: 'Big Burger',
        subtitle: 'Juicy beef burger with fries',
        price: '600',
        time: '20-30min',
        rating: '9.0',
        badge: '1 off combo',
        places: '15 places',
        priceLevel: "60",
        restaurant: "Burger Town",
        isLiked: false,
      ),
      FooditemsModel(
        id: "4",
        image: '${AppAssets.appImages}sushi.jpeg',
        title: 'Sushi Express',
        subtitle: 'Fresh sushi rolls and sashimi',
        price: '120',
        time: '35-45min',
        rating: '9.7',
        badge: 'Free miso soup',
        places: '12 places',
        priceLevel: "100",
        restaurant: "Tokyo Bay",
        isLiked: true,
      ),
      FooditemsModel(
        id: "5",
        image: '${AppAssets.appImages}ramen.jpeg',
        title: 'Italian Pasta',
        subtitle: 'Authentic handmade pasta',
        price: '901',
        time: '25-35min',
        rating: '9.3',
        badge: '10% off today',
        places: '20 places',
        priceLevel: "90",
        restaurant: "Roma Kitchen",
        isLiked: false,
      ),
      FooditemsModel(
        id: "6",
        image: '${AppAssets.appImages}spaghetti_meatball.jpeg',
        title: 'Sweet Treats',
        subtitle: 'Ice creams, cakes, and desserts',
        price: '400',
        time: '15-25min',
        rating: '9.6',
        badge: 'Free topping',
        places: '18 places',
        priceLevel: "40",
        restaurant: "Dessert Hub",
        isLiked: true,
      ),
      FooditemsModel(
        id: "7",
        image: '${AppAssets.appImages}indian_thali.jpeg',
        title: 'Spicy Indian',
        subtitle: 'Curries, naan, and biryani',
        price: '110',
        time: '40-50min',
        rating: '9.1',
        badge: 'Free drink',
        places: '22 places',
        priceLevel: "85",
        restaurant: "Tandoor House",
        isLiked: false,
      ),
      FooditemsModel(
        id: "8",
        image: '${AppAssets.appImages}cheeseburger.jpeg',
        title: 'Dragon Wok',
        subtitle: 'Noodles, dumplings & stir fry',
        price: '700',
        time: '30-40min',
        rating: '9.4',
        badge: '2 off orders ₹15+',
        places: '19 places',
        priceLevel: "70",
        restaurant: "Asian Fusion",
        isLiked: false,
      ),
      FooditemsModel(
        id: "9",
        image: '${AppAssets.appImages}garden_salad.png',
        title: 'Healthy Greens',
        subtitle: 'Fresh salads & smoothies',
        price: '500',
        time: '15-20min',
        rating: '9.0',
        badge: 'Free smoothie',
        places: '14 places',
        priceLevel: "45",
        restaurant: "Green Bowl",
        isLiked: true,
      ),
      FooditemsModel(
        id: "10",
        image: '${AppAssets.appImages}tacos.jpeg',
        title: 'BBQ Grill',
        subtitle: 'Smoked meats & ribs',
        price: '1400',
        time: '45-55min',
        rating: '9.8',
        badge: '5 off delivery',
        places: '10 places',
        priceLevel: "110",
        restaurant: "Texas Smokehouse",
        isLiked: false,
      ),
    ]);

    state = state.copyWith(foodItemsList: tempFoodItems);
  }

  void addTaxCharges({required String id, String? totalAmount}) {
    final tempList = [...state.foodItemsList];

    final item = tempList.firstWhere((element) => element.id == id);

    final updatedItem = item.copyWith(price: totalAmount);
    final updatedList =
        tempList.map((e) => e.id == id ? updatedItem : e).toList();

    state = state.copyWith(foodItemsList: updatedList);
  }
}
