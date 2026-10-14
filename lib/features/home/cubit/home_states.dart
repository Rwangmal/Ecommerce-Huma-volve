import 'package:ecommerce_app_huma_volve/features/home/services/models/categoriesModels.dart';
import 'package:ecommerce_app_huma_volve/features/home/services/models/productsModels.dart';

abstract  class HomeStates {

}
class HomeInitial extends HomeStates{

}
class CategoriesIsLoading extends HomeStates{}

class CategoriesSuccess extends HomeStates{
  final List<categoriesModels> CategoriesModels;
  CategoriesSuccess(this.CategoriesModels);
}

class CategoriesError extends HomeStates{
  final String errorMessage;
  CategoriesError(this.errorMessage);
}


class ProductsIsLoading extends HomeStates{}

class ProductsSuccess extends HomeStates{
  final List<productsModels> ProductsModels;
  ProductsSuccess(this.ProductsModels);
}

class ProductsError extends HomeStates{
  final String errorMessage;
  ProductsError(this.errorMessage);
}