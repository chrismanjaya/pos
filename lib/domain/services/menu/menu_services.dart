import 'package:dartz/dartz.dart';
import 'package:pos/domain/model/menu_model.dart';

abstract class MenuServices {
  Future<Either<String, List<MenuModel>>> getAllMenu();
}
