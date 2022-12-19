import 'app_config.dart';
import 'package:firebase_deployment/main.dart';

final config = AppConfig(
  name: "server config",
  baseUrl: "https://sample.digitalocrean.net",
);

void main() {
  launchApp(config: config);
}
