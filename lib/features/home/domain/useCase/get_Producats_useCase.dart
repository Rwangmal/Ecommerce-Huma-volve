import 'package:dartz/dartz.dart';
import 'package:ecommerce_app_huma_volve/features/home/domain/repository/homeRepository.dart';

import '../../../../core/failure/failure.dart';
import '../entity/home_products_entity.dart';

class getProductsUseCase {
  final Homerepository homerepository;
  getProductsUseCase(this.homerepository);

  Future <Either<Failure, List<HomeProductsEntity>>>
  invoke(int? categoryId) => homerepository.getProducts(categoryId);
}