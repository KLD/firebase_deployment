import 'app_config.dart';
import 'package:firebase_deployment/main.dart';

final config = AppConfig(
  name: "server config",
  baseUrl: "https://hammerhead-app-xbxla.ondigitalocean.app/api",
);

void main() {
  launchApp(config: config);
}
