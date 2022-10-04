import 'package:injectable/injectable.dart';
import 'package:package_info/package_info.dart';
import 'package:pos/domain/model/version_model.dart';
import 'package:pos/domain/services/version/version_services.dart';

@LazySingleton(as: VersionServices)
class VersionServicesImp implements VersionServices {
  @override
  Future<VersionModel> getVersionInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return VersionModel(
      appName: packageInfo.appName,
      packageName: packageInfo.packageName,
      version: packageInfo.version,
      buildNumber: packageInfo.buildNumber,
    );
  }
}
