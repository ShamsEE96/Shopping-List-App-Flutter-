import 'package:bootcamp_01/core/enums/data_type.dart';
import 'package:bootcamp_01/main.dart';

final SharedPreferencesRepository storage =
    SharedPreferencesRepository.instance;

class SharedPreferencesRepository {
  static final SharedPreferencesRepository _instance =
      SharedPreferencesRepository._internal();
  static SharedPreferencesRepository get instance => _instance;
  SharedPreferencesRepository._internal();

  static const String prefFirstLaunch = 'PREF_FIRST_LAUNCH';

  setFirstLaunch(bool value) {
    setPreference(dataType: DataType.BOOL, key: prefFirstLaunch, value: value);
  }

  bool getFirstLaunch() {
    if (globalSharedPrefs!.containsKey(prefFirstLaunch)) {
      return getPreference(key: prefFirstLaunch);
    } else {
      return true;
    }
  }

  setPreference({
    required DataType dataType,
    required String key,
    required dynamic value,
  }) async {
    switch (dataType) {
      case DataType.INT:
        await globalSharedPrefs!.setInt(key, value);
        break;
      case DataType.BOOL:
        await globalSharedPrefs!.setBool(key, value);
        break;
      case DataType.STRING:
        await globalSharedPrefs!.setString(key, value);
        break;
      case DataType.DOUBLE:
        await globalSharedPrefs!.setDouble(key, value);
        break;
      case DataType.LISTSTRING:
        await globalSharedPrefs!.setStringList(key, value);
        break;
    }
  }

  dynamic getPreference({required String key}) {
    return globalSharedPrefs!.get(key);
  }
}
