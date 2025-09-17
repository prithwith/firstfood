import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/utils/common_utils.dart';
import 'package:fastfood/screen/search/presentation/widget/search_item_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController newcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20).r,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: statusHeight(context)),
              SizedBox(
                height: 45.h,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    ),
                  ),
                ),
              ),
              30.verticalSpace,
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  SearchItemButton(label: "burger"),
                  SearchItemButton(label: "vegetarian"),
                  SearchItemButton(label: "healthy"),
                  SearchItemButton(label: "wrap"),
                  SearchItemButton(label: "fast food"),
                  SearchItemButton(label: "salad"),
                  SearchItemButton(label: "snack"),
                  SearchItemButton(label: "sandwitch"),
                  SearchItemButton(label: "sushi"),
                  SearchItemButton(label: "desserts"),
                  SearchItemButton(label: "thali"),
                  SearchItemButton(label: "lunch"),
                  SearchItemButton(label: "pizza"),
                  SearchItemButton(label: "kebab"),
                  SearchItemButton(label: "breakfast"),
                  SearchItemButton(label: "wings"),
                  SearchItemButton(label: "desserts"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
