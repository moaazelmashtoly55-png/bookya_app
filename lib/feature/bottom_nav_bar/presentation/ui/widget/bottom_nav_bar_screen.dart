import 'package:bookya_app/core/theme/app_color.dart';
import 'package:bookya_app/feature/cart/presentation/ui/cart_screen.dart';
import 'package:bookya_app/feature/favorit/presentation/ui/favorit_screen.dart';
import 'package:bookya_app/feature/home/presentation/cubit/cubit/home_cubit.dart';
import 'package:bookya_app/feature/home/presentation/ui/home_screen.dart';
import 'package:bookya_app/feature/my_accunt/presentation/ui/my_accunt_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    BlocProvider(create: (context) => HomeCubit()..getHomeSlider()..getBestSellar(), child: HomeScreen()),
    FavoritScreen(),
    CartScreen(),
    MyAccuntScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: AppColor.primary,
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 26),
        unselectedItemColor: AppColor.gray,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "accunt"),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
