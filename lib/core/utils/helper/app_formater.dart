class AppFormater {
  static DateTime? getBirthdateFromNationalId(String nationalId) {
    if (nationalId.length != 14) return null;

    final centuryDigit = nationalId[0];
    final yearPart = nationalId.substring(1, 3);
    final monthPart = nationalId.substring(3, 5);
    final dayPart = nationalId.substring(5, 7);

    int century;
    switch (centuryDigit) {
      case '2':
        century = 1900;
        break;
      case '3':
        century = 2000;
        break;
      case '4':
        century = 2100; // future case
        break;
      default:
        return null; // invalid or unsupported
    }

    try {
      final year = century + int.parse(yearPart);
      final month = int.parse(monthPart);
      final day = int.parse(dayPart);

      return DateTime(year, month, day);
    } catch (e) {
      return null;
    }
  }
}
