import 'package:pos/domain/model/privilege_model.dart';

class Utils {
  bool isValidAction(
    List<PrivilegeModel> listPrivilegeModel,
    int menuId,
    String targetAction,
  ) {
    try {
      for (PrivilegeModel privilegeModel in listPrivilegeModel) {
        if (privilegeModel.menuCode == menuId &&
            isEqualsIgnoreCase(privilegeModel.action, targetAction)) {
          return true;
        }
      }
    } catch (error) {
      return false;
    }
    return false;
  }

  bool isNumeric(String str) {
    if (str == null) {
      return false;
    }
    return int.tryParse(str) != null;
  }

  bool isEqualsIgnoreCase(String string1, String string2) =>
      string1?.toLowerCase() == string2?.toLowerCase();
}
