import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t = Translations.byText("en-US") +
      {
        "en-US": "",
        "pt-BR": "",
      };

  String get i18hymnal => localize(this, _t);
}
