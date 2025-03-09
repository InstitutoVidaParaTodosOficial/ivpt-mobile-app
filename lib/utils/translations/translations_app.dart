import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t = Translations.byText("en-US") +
      {
        "en-US": "Loading...",
        "pt-BR": "Carregando...",
        "es-ES": "Cargando...",
        "fr-FR": "Chargement...",
        "ko-KR": "로딩 중...",
      } +
      {
        "en-US": "Home",
        "pt-BR": "Início",
        "es-ES": "Inicio",
        "fr-FR": "Accueil",
        "ko-KR": "홈",
      } +
      {
        "en-US": "Hymnal",
        "pt-BR": "Hinário",
        "es-ES": "Himnario",
        "fr-FR": "Hymnaire",
        "ko-KR": "찬송가",
      } +
      {
        "en-US": "Ivpt",
        "pt-BR": "Ivpt",
        "es-ES": "Ivpt",
        "fr-FR": "Ivpt",
        "ko-KR": "Ivpt",
      } +
      {
        "en-US": "Offers",
        "pt-BR": "Ofertas",
        "es-ES": "Ofertas",
        "fr-FR": "Offres",
        "ko-KR": "제안",
      } +
      {
        "en-US": "Central of Offerings",
        "pt-BR": "Central de Ofertas",
        "es-ES": "Central de Ofertas",
        "fr-FR": "Centre des Offrandes",
        "ko-KR": "헌금 센터",
      } +
      {
        "en-US": "Keyboard",
        "pt-BR": "Teclado",
        "es-ES": "Teclado",
        "fr-FR": "Clavier",
        "ko-KR": "키보드",
      } +
      {
        "en-US": "Categories",
        "pt-BR": "Categorias",
        "es-ES": "Categorías",
        "fr-FR": "Catégories",
        "ko-KR": "카테고리",
      } +
      {
        "en-US": "Hymns",
        "pt-BR": "Hinos",
        "es-ES": "Himnos",
        "fr-FR": "Hymnes",
        "ko-KR": "찬송",
      } +
      {
        "en-US": "Supplements",
        "pt-BR": "Suplementos",
        "es-ES": "Suplementos",
        "fr-FR": "Suppléments",
        "ko-KR": "보충 자료",
      } +
      {
        "en-US": "Songs",
        "pt-BR": "Cânticos",
        "es-ES": "Cánticos",
        "fr-FR": "Chants",
        "ko-KR": "노래",
      } +
      {
        "en-US": "New Hymns",
        "pt-BR": "Hinos Novos",
        "es-ES": "Himnos Nuevos",
        "fr-FR": "Nouveaux Hymnes",
        "ko-KR": "새로운 찬송",
      };

  String get i18app => localize(this, _t);
}
