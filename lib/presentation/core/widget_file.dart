import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

Future<void> saveAndLaunchFile(List<int> bytes, String fileName) async {
  Directory directory = Platform.isAndroid
      ? await getExternalStorageDirectory()
      : await getApplicationSupportDirectory();

  final path = directory.path;
  final file = File('$path/$fileName');
  final dataFile = await file.writeAsBytes(
    bytes,
    mode: FileMode.write,
    flush: true,
  );
  await OpenFile.open(dataFile.path);
}
