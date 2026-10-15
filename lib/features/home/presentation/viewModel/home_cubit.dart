import 'package:ecommerce_app_huma_volve/core/failure/failure.dart';
import 'package:ecommerce_app_huma_volve/features/home/domain/useCase/get_Producats_useCase.dart';
import 'package:ecommerce_app_huma_volve/features/home/domain/useCase/get_categories_useCase.dart';
import 'package:ecommerce_app_huma_volve/features/home/presentation/viewModel/home_states.dart';
import 'package:ecommerce_app_huma_volve/features/home/services/home_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomeCubit extends Cubit<HomeStates>{
 final getProductsUseCase GetProductsUseCase;
 final getCategoriesUseCase GetCategoriesUseCase;
 HomeCubit({ required this.GetProductsUseCase, required this.GetCategoriesUseCase}):super(HomeInitial());

  void LoadHomeDate()  async{
   int categoryId=0;
   emit(CategoriesIsLoading());

  final categories=await GetCategoriesUseCase.invoke();
  categories.fold(
          (failure){emit(CategoriesError(failure.failureMessage));},
          (categories){categoryId=categories[0].id;emit(CategoriesSuccess(categories));}
  );

  final products=await GetProductsUseCase.invoke(categoryId);
   products.fold(
        (failure){emit(ProductsError(failure.failureMessage));},
        (products){emit(ProductsSuccess(products));},

      );
}


 void getProductByCategoryId(int id)async{
   emit(ProductsIsLoading());

   final products=await GetProductsUseCase.invoke(id);
   products.fold(
         (failure){emit(ProductsError(failure.failureMessage));},
         (products){emit(ProductsSuccess(products));},

   );
 }}

