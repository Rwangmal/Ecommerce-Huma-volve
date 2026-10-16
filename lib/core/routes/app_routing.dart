import 'package:ecommerce_app_huma_volve/core/dummy_data.dart';
import 'package:ecommerce_app_huma_volve/features/details/screens/product_details_screen.dart';
import 'package:ecommerce_app_huma_volve/features/splash/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final appRouting=
GoRouter(
    initialLocation: "/",
    routes:[
      GoRoute(path: '/',builder: (context, state) {
        return const SplashScreen();
      }
      ),

      GoRoute(path: '/products/',
          builder: (context, state) {
        final productid=state.pathParameters["id"];
        product product=productid;
        return ProductDetailsScreen(product:int.parse(product!) ,);
      }
      ),
    ]
);

