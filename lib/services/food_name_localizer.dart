class FoodNameLocalizer {
  static final List<MapEntry<String, String>> _phrases = [
    const MapEntry('low fat', 'niskotłuszczowy'),
    const MapEntry('fat free', 'beztłuszczowy'),
    const MapEntry('whole wheat', 'pełnoziarnisty'),
    const MapEntry('whole grain', 'pełnoziarnisty'),
    const MapEntry('sweet potato', 'batat'),
    const MapEntry('green beans', 'fasolka szparagowa'),
    const MapEntry('bell pepper', 'papryka'),
    const MapEntry('olive oil', 'oliwa z oliwek'),
    const MapEntry('canola oil', 'olej rzepakowy'),
    const MapEntry('sunflower oil', 'olej słonecznikowy'),
    const MapEntry('peanut butter', 'masło orzechowe'),
    const MapEntry('cottage cheese', 'serek wiejski'),
    const MapEntry('cream cheese', 'serek śmietankowy'),
    const MapEntry('sour cream', 'śmietana kwaśna'),
    const MapEntry('ice cream', 'lody'),
    const MapEntry('orange juice', 'sok pomarańczowy'),
    const MapEntry('apple juice', 'sok jabłkowy'),
    const MapEntry('tomato juice', 'sok pomidorowy'),
  ];

  static final Map<String, String> _words = {
    'milk': 'mleko',
    'whole': 'pełne',
    'skim': 'odtłuszczone',
    'reduced': 'obniżone',
    'calcium': 'wapń',
    'fortified': 'wzbogacone',
    'egg': 'jajko',
    'eggs': 'jajka',
    'beef': 'wołowina',
    'pork': 'wieprzowina',
    'chicken': 'kurczak',
    'turkey': 'indyk',
    'fish': 'ryba',
    'salmon': 'łosoś',
    'tuna': 'tuńczyk',
    'cod': 'dorsz',
    'bread': 'chleb',
    'rice': 'ryż',
    'pasta': 'makaron',
    'potato': 'ziemniak',
    'potatoes': 'ziemniaki',
    'tomato': 'pomidor',
    'onion': 'cebula',
    'garlic': 'czosnek',
    'carrot': 'marchew',
    'broccoli': 'brokuł',
    'lettuce': 'sałata',
    'spinach': 'szpinak',
    'apple': 'jabłko',
    'banana': 'banan',
    'orange': 'pomarańcza',
    'strawberry': 'truskawka',
    'blueberry': 'borówka',
    'raspberry': 'malina',
    'cheese': 'ser',
    'yogurt': 'jogurt',
    'cream': 'śmietana',
    'butter': 'masło',
    'water': 'woda',
    'coffee': 'kawa',
    'tea': 'herbata',
    'sugar': 'cukier',
    'salt': 'sól',
    'pepper': 'pieprz',
    'raw': 'surowy',
    'cooked': 'gotowany',
    'fried': 'smażony',
    'baked': 'pieczony',
    'boiled': 'gotowany',
    'fresh': 'świeży',
    'dried': 'suszony',
    'frozen': 'mrożony',
    'juice': 'sok',
    'soup': 'zupa',
    'sauce': 'sos',
    'with': 'z',
    'without': 'bez',
    'and': 'i',
  };

  static String localize(String name) {
    var localized = ' ${name.toLowerCase()} ';

    for (final phrase in _phrases) {
      localized = localized.replaceAll(' ${phrase.key} ', ' ${phrase.value} ');
    }

    _words.forEach((english, polish) {
      localized = localized.replaceAll(' $english ', ' $polish ');
    });

    localized = localized
        .replaceAll(' ,', ',')
        .replaceAll(' .', '.')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();

    if (localized.isEmpty) return name;
    return localized[0].toUpperCase() + localized.substring(1);
  }
}
