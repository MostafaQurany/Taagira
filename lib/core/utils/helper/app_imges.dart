class AppImges {
  static String tagiraLogo = _imagePath('tagira_logo.png');
  static String registerScreenBackground = _imagePath(
    'register_screen_background.png',
  );
  static String carImagePlaceholder = _imagePath(
    'car_image_placeholder.png',
  );
  
  static _imagePath(String imageName) {
    return 'assets/images/$imageName';
  }
}

class AppIcons {
  static String gendersIcon = _imagePath('genders_icon.png');
  static String backArrowCarIcon = _imagePath('back_arrow_car_icon.png');
  static _imagePath(String imageName) {
    return 'assets/icons/$imageName';
  }
}
