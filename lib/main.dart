import 'package:bookya_app/bookya.dart';
import 'package:bookya_app/core/helper/dio_services.dart';
import 'package:bookya_app/core/helper/local_servises.dart';
import 'package:flutter/material.dart';

void main()async { 

WidgetsFlutterBinding.ensureInitialized();

await LocalServises.init();
DioServices.init();
  runApp(Bookya());
}
