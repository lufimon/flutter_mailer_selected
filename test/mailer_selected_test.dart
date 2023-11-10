import 'package:flutter_test/flutter_test.dart';
import 'package:mailer_selected/mailer_selected.dart';
import 'package:mailer_selected/mailer_selected_platform_interface.dart';
import 'package:mailer_selected/mailer_selected_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMailerSelectedPlatform
    with MockPlatformInterfaceMixin
    implements MailerSelectedPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MailerSelectedPlatform initialPlatform = MailerSelectedPlatform.instance;

  test('$MethodChannelMailerSelected is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMailerSelected>());
  });

  test('getPlatformVersion', () async {
    MailerSelected mailerSelectedPlugin = MailerSelected();
    MockMailerSelectedPlatform fakePlatform = MockMailerSelectedPlatform();
    MailerSelectedPlatform.instance = fakePlatform;

    expect(await mailerSelectedPlugin.getPlatformVersion(), '42');
  });
}
