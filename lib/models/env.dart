import 'package:meta/meta.dart';

enum BuildFlavor { production, development, staging }

BuildEnvironment get env => _env;
BuildEnvironment _env;

class BuildEnvironment {
  final BuildFlavor flavor;
  final String appName;

  BuildEnvironment._init({this.flavor, this.appName});

  /// Sets up the top-level [env] getter on the first call only.
  static void init({@required BuildFlavor flavor, @required String appName}) =>
      _env ??= BuildEnvironment._init(flavor: flavor, appName: appName);
}
