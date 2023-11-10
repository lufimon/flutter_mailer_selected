import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mailer_selected_method_channel.dart';

abstract class MailerSelectedPlatform extends PlatformInterface {
  /// Constructs a MailerSelectedPlatform.
  MailerSelectedPlatform() : super(token: _token);

  static final Object _token = Object();

  static MailerSelectedPlatform _instance = MethodChannelMailerSelected();

  /// The default instance of [MailerSelectedPlatform] to use.
  ///
  /// Defaults to [MethodChannelMailerSelected].
  static MailerSelectedPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MailerSelectedPlatform] when
  /// they register themselves.
  static set instance(MailerSelectedPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
