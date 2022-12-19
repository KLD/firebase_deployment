import 'package:firebase_deployment/main.dart';

import 'app_config.dart';

final config = AppConfig(
  name: "local config",
  baseUrl: "https://localhost.net",
);

void main() {
  launchApp(config: config);
}
