// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/fastdelivery_model.dart';
import 'package:fastfood/core/model/popularitems_model.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/screen/discover/application/discover_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiscoverNotifier extends StateNotifier<DiscoverState> {
  DiscoverNotifier(this._dio, this._hiveDataBase)
    : super(const DiscoverState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  void setCurrentIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }

  void showSliderImages() {
    final List<String> tempImageList = [
      '${AppAssets.appImages}fresh_fruits.jpeg',
      '${AppAssets.appImages}garden_salad.png',
      '${AppAssets.appImages}indian_thali.jpeg',
      '${AppAssets.appImages}spaghetti_meatball.jpeg',
    ];

    state = state.copyWith(sliderList: tempImageList);
  }

  void getAllFastestDeliveryItems() {
    final List<FastDeliveryModel> tempFastestDeliveryItems = [];

    tempFastestDeliveryItems.addAll([
      FastDeliveryModel(
        id: 1,
        image: '${AppAssets.appImages}fresh_fruits.jpeg',
        title: 'Crazy Taco',
        subtitle: 'Delicious tacos, appetizers...',
        price: '€3.00',
        time: '40-50min',
        rating: '9.5',
        badge: '€3.00 off delivery',
      ),
      FastDeliveryModel(
        id: 2,
        image: '${AppAssets.appImages}pizza.jpg',
        title: 'Hot Pizza',
        subtitle: 'Cheesy pizza with fresh toppings',
        price: '€8.50',
        time: '30-40min',
        rating: '9.2',
        badge: 'Free garlic bread',
      ),
      FastDeliveryModel(
        id: 3,
        image: '${AppAssets.appImages}cheeseburger.jpeg',
        title: 'Big Burger',
        subtitle: 'Juicy beef burger with fries',
        price: '€6.00',
        time: '20-30min',
        rating: '9.0',
        badge: '€1.00 off combo',
      ),
      FastDeliveryModel(
        id: 4,
        image: '${AppAssets.appImages}sushi.jpeg',
        title: 'Sushi Express',
        subtitle: 'Fresh sushi rolls and sashimi',
        price: '€12.00',
        time: '35-45min',
        rating: '9.7',
        badge: 'Free miso soup',
      ),
      FastDeliveryModel(
        id: 5,
        image: '${AppAssets.appImages}ramen.jpeg',
        title: 'Italian Pasta',
        subtitle: 'Authentic handmade pasta',
        price: '€9.50',
        time: '25-35min',
        rating: '9.3',
        badge: '10% off today',
      ),
      FastDeliveryModel(
        id: 6,
        image: '${AppAssets.appImages}spaghetti_meatball.jpeg',
        title: 'Sweet Treats',
        subtitle: 'Ice creams, cakes, and desserts',
        price: '€4.00',
        time: '15-25min',
        rating: '9.6',
        badge: 'Free topping',
      ),
      FastDeliveryModel(
        id: 7,
        image: '${AppAssets.appImages}indian_thali.jpeg',
        title: 'Spicy Indian',
        subtitle: 'Curries, naan, and biryani',
        price: '€11.00',
        time: '40-50min',
        rating: '9.1',
        badge: 'Free drink',
      ),
      FastDeliveryModel(
        id: 8,
        image: '${AppAssets.appImages}cheeseburger.jpeg',
        title: 'Dragon Wok',
        subtitle: 'Noodles, dumplings & stir fry',
        price: '€7.50',
        time: '30-40min',
        rating: '9.4',
        badge: '€2.00 off orders €15+',
      ),
      FastDeliveryModel(
        id: 9,
        image: '${AppAssets.appImages}garden_salad.png',
        title: 'Healthy Greens',
        subtitle: 'Fresh salads & smoothies',
        price: '€5.50',
        time: '15-20min',
        rating: '9.0',
        badge: 'Free smoothie',
      ),
      FastDeliveryModel(
        id: 10,
        image: '${AppAssets.appImages}tacos.jpeg',
        title: 'BBQ Grill',
        subtitle: 'Smoked meats & ribs',
        price: '€14.00',
        time: '45-55min',
        rating: '9.8',
        badge: '€5.00 off delivery',
      ),
    ]);

    state = state.copyWith(fastDeliveryList: tempFastestDeliveryItems);
  }

  void getAllPopularItems() {
    final List<PopularitemsModel> tempPopularItems = [];

    tempPopularItems.addAll([
      PopularitemsModel(
        id: 1,
        imagePath: '${AppAssets.appImages}tacos.jpeg',
        title: 'BBQ',
        subtitle: '36 places',
      ),
      PopularitemsModel(
        id: 2,
        imagePath: '${AppAssets.appImages}garden_salad.png',
        title: 'Salads',
        subtitle: '44 places',
      ),
      PopularitemsModel(
        id: 3,
        imagePath: '${AppAssets.appImages}cheeseburger.jpeg',
        title: 'Chinese',
        subtitle: '98 places',
      ),
      PopularitemsModel(
        id: 4,
        imagePath: '${AppAssets.appImages}indian_thali.jpeg',
        title: 'Indian',
        subtitle: '52 places',
      ),
      PopularitemsModel(
        id: 5,
        imagePath: '${AppAssets.appImages}spaghetti_meatball.jpeg',
        title: 'Desserts',
        subtitle: '110 places',
      ),
      PopularitemsModel(
        id: 6,
        imagePath: '${AppAssets.appImages}ramen.jpeg',
        title: 'Pasta',
        subtitle: '74 places',
      ),
      PopularitemsModel(
        id: 7,
        imagePath: '${AppAssets.appImages}sushi.jpeg',
        title: 'Sushi',
        subtitle: '65 places',
      ),
      PopularitemsModel(
        id: 8,
        imagePath: '${AppAssets.appImages}cheeseburger.jpeg',
        title: 'Burgers',
        subtitle: '87 places',
      ),
      PopularitemsModel(
        id: 9,
        imagePath: '${AppAssets.appImages}pizza.jpg',
        title: 'Pizza',
        subtitle: '120 places',
      ),
      PopularitemsModel(
        id: 10,
        imagePath: '${AppAssets.appImages}fresh_fruits.jpeg',
        title: 'Brunch',
        subtitle: '94 places',
      ),
    ]);

    state = state.copyWith(popularItemsList: tempPopularItems);
  }
}
