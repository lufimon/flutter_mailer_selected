
import 'mailer_selected_platform_interface.dart';

class MailerSelected {
  Future<String?> getPlatformVersion() {
    return MailerSelectedPlatform.instance.getPlatformVersion();
  }
}
