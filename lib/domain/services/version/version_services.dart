import 'package:pos/domain/model/version_model.dart';

abstract class VersionServices {
  Future<VersionModel> getVersionInfo();
}
