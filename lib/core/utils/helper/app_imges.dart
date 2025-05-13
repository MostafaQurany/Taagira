class AppImges {
  static String tagiraLogo = _imagePath('tagira_logo.png');
  static String registerScreenBackground = _imagePath(
    'register_screen_background.png',
  );
  static String carImagePlaceholder = _imagePath('car_image_placeholder.png');
  static String personImagePlaceholder = _imagePath(
    'person_image_placeholder.png',
  );
  static String carRentLight = _imagePath('car_rent_light.png');
  static String carRentDark = _imagePath('car_rent_dark.png');

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

class AppLottie {
  static String loginCenterCarTown = _imagePath('login_center_car_town.json');
  static _imagePath(String imageName) {
    return 'assets/lottie/$imageName';
  }
}

class AppSVG {
  static String mobileLogin = _imagePath('mobile_login.svg');
  static String mobileLoginDark = _imagePath('mobile_login_dark.svg');
  static String otpLoginDark = _imagePath('otp_login_dark.svg');
  static String otpLoginLight = _imagePath('otp_login.svg');
  static String rentCarDoneDark = _imagePath('rent_car_done_dark.svg');
  static String rentCarDoneLight = _imagePath('rent_car_done.svg');
  static String finshBookingVictorDark = _imagePath(
    'finsh_booking_victor_dark.svg',
  );
  static String finshBookingVictorLight = _imagePath(
    'finsh_booking_victor.svg',
  );
  static _imagePath(String imageName) {
    return 'assets/svg/$imageName';
  }
}
