import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'mailer_selected_platform_interface.dart';

/// An implementation of [MailerSelectedPlatform] that uses method channels.
class MethodChannelMailerSelected extends MailerSelectedPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mailer_selected');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
