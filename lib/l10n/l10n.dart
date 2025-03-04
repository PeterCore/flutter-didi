import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ApplocalizationEx on BuildContext {
  AppLocalizations? get l10n => AppLocalizations.of(this);
}
