import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:taggira/core/utils/server/app_exceptions_handler.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/repo/car_repo.dart';
import 'package:uuid/uuid.dart';

part 'add_car_state.dart';
part 'add_car_cubit.freezed.dart';

class AddCarCubit extends Cubit<AddCarState> {
  final CarRepo _carRepo; // Inject CarRepo
  final Uuid _uuid = const Uuid(); // Instance for generating IDs

  // Update constructor to accept CarRepo
  AddCarCubit(this._carRepo) : super(const AddCarState.initial());

  //*Form Key
  final formKey = GlobalKey<FormState>();

  //* add the images to the car
  final List<XFile?> selectedImages = List.filled(6, null);
  final ImagePicker picker = ImagePicker();
  final CarouselSliderController carouselController =
      CarouselSliderController();
  int currentCarouselIndex = 0;

  //* basic informations
  String? selectedCategory;
  String? selectedBrand;
  String? selectedModel;
  int? selectedYear; // Changed from TextEditingController

  // --- Car Data (Nested Map) ---
  final Map<String, Map<String, List<String>>> carData = {
    "Popular": {
      "Toyota": [
        "Camry",
        "Corolla",
        "RAV4",
        "Highlander",
        "Tacoma",
        "Prius",
        "Land Cruiser",
      ],
      "Volkswagen": [
        "Golf",
        "Polo",
        "Tiguan",
        "T-Roc",
        "T-Cross",
        "ID.4",
        "Jetta/Vento",
      ],
      "Ford": [
        "F-150",
        "Mustang",
        "Explorer",
        "Escape/Kuga",
        "Ranger",
        "Focus",
        "Transit",
      ],
      "Honda": [
        "Civic",
        "Accord",
        "CR-V",
        "HR-V/Vezel",
        "Pilot",
        "Odyssey",
        "Ridgeline",
      ],
      "Nissan": [
        "Rogue/X-Trail",
        "Sentra/Sylphy",
        "Altima",
        "Kicks",
        "Qashqai/Rogue Sport",
        "Navara/Frontier",
        "Magnite",
      ],
      "Hyundai": [
        "Elantra/Avante",
        "Sonata",
        "Tucson",
        "Santa Fe",
        "Kona",
        "Creta/ix25",
      ],
      "Kia": [
        "Sportage",
        "Seltos",
        "Optima/K5",
        "Forte/Cerato",
        "Telluride",
        "Rio/K2/Pride",
      ],
      "Chevrolet": [
        "Silverado",
        "Equinox",
        "Traverse",
        "Malibu",
        "Cruze",
        "Suburban/Tahoe",
      ],
      "BMW": ["3 Series", "5 Series", "X1", "X3", "X5"],
      "Mercedes-Benz": ["C-Class", "E-Class", "S-Class", "GLC", "GLE"],
      "Audi": ["A3", "A4", "A6", "Q3", "Q5"],
      "Subaru": ["Outback", "Crosstrek", "Forester", "Impreza"],
      "Mazda": ["Mazda3", "CX-5", "Mazda6", "CX-9"],
      "Renault": ["Clio", "Captur", "Mégane", "Duster", "Kadjar/Austral"],
      "Peugeot": ["208", "308", "2008", "3008", "5008"],
    },
    "Luxury": {
      "Rolls-Royce": ["Phantom", "Ghost", "Cullinan"],
      "Bentley": ["Continental GT", "Flying Spur", "Bentayga"],
      "Maybach": ["S-Class Maybach"],
      "Aston Martin": ["DB11", "Vantage", "DBX"],
      "Ferrari": ["SF90 Stradale", "296 GTB", "Roma", "F8 Tributo"],
      "Lamborghini": ["Huracán", "Aventador", "Urus"],
      "Maserati": ["Ghibli", "Quattroporte", "Levante"],
      "Porsche": ["911", "Cayenne", "Macan", "Taycan"],
      "Jaguar": ["F-Pace", "E-Pace", "XF"],
      "Land Rover": [
        "Range Rover",
        "Range Rover Sport",
        "Discovery",
        "Defender",
      ],
      "Lexus": ["RX", "NX", "ES", "LX"],
      "Acura": ["MDX", "RDX", "TLX"],
      "Infiniti": ["QX60", "QX50", "Q50"],
      "Cadillac": ["Escalade", "XT5", "CT5"],
      "Lincoln": ["Navigator", "Aviator", "Nautilus"],
      "Volvo": ["XC60", "XC90", "S60", "S90"],
      "Genesis": ["G70", "G80", "GV70", "GV80"],
    },
    "EV": {
      "Tesla": ["Model 3", "Model Y", "Model S", "Model X"],
      "Rivian": ["R1T", "R1S"],
      "Lucid Motors": ["Air"],
      "Nio": ["ES6", "ET7", "EC6"],
      "Polestar": ["Polestar 2"],
      "BYD": ["Han", "Tang", "Dolphin", "Atto 3"],
    },
    "Other": {
      "Alfa Romeo": ["Giulia", "Stelvio"],
      "Fiat": ["500", "Panda", "Tipo"],
      "Mini": ["Cooper", "Countryman"],
      "Suzuki": ["Swift", "Vitara", "Jimny"],
      "Mitsubishi": ["Outlander", "Eclipse Cross", "L200/Triton"],
      "Dacia": ["Sandero", "Duster", "Logan"],
      "Škoda": ["Octavia", "Karoq", "Kodiaq"],
      "SEAT": ["Leon", "Ateca", "Ibiza"],
      "Opel": ["Astra", "Corsa", "Mokka"],
      "Citroën": ["C3", "C4", "C5 Aircross"],
      "MG Motor": ["ZS EV", "HS", "MG5 EV"],
    },
  };

  // --- List of years for the dropdown ---
  List<int>? yearList;
  // --- State Variable for Selected Color ---
  Color? selectedColor; // Changed from TextEditingController
  bool selectedOtherColor = false;
  // --- Available Colors for Palette ---
  final List<Color> availableColors = [
    Colors.white,
    Colors.black,
    const Color(0xFFBDBDBD), // Grey
    const Color(0xFF757575), // Dark Grey
    const Color(0xFFC0C0C0), // Silver
    Colors.red.shade700,
    Colors.blue.shade700,
    Colors.green.shade700,
    Colors.yellow.shade800,
    Colors.orange.shade800,
    const Color(0xFF4E342E), // Brown
    const Color(0xFFD4AF37), // Gold
    Colors.lightBlue.shade700,
    Colors.lime.shade800,
    Colors.pink.shade400,
    const Color(0xFF800080), // Purple
    const Color(0xFFA0522D), // Sienna
    const Color(0xFF00FFFF), // Cyan
    const Color(0xFFF0E68C), // Khaki
    Colors.teal.shade700,
    Colors.indigo.shade700,
    Colors.amber.shade800,
    Colors.deepOrange.shade800,
    const Color(0xFF8FBC8F), // DarkSeaGreen
    const Color(0xFFB0E0E6), // PowderBlue
    // Add more colors as needed
  ];

  // --- Helper to determine checkmark color based on background ---
  Color getCheckmarkColor(Color backgroundColor) {
    // Calculate luminance (simple version)
    double luminance =
        (0.299 * backgroundColor.red +
            0.587 * backgroundColor.green +
            0.114 * backgroundColor.blue) /
        255;
    return luminance > 0.5 ? Colors.black : Colors.white;
  }

  //* specification
  final seatsController = TextEditingController();

  CarType? selectedCarType;
  CarTransmission? selectedTransmission;
  CarFuelType? selectedFuelType;

  //* Rental details
  final priceController = TextEditingController();

  final locationController = TextEditingController();

  //* features and discreptions
  final descriptionController = TextEditingController();

  bool? hasGPS; // State now lives here
  bool? hasBluetooth; // State now lives here
  bool? hasAC; // State now lives here
  bool showFeatureValidationError =
      false; // To trigger validation message display

  //*submit add car

  // Helper to convert Color to Hex String (needed for CarModel)
  String _colorToHexString(Color color) {
    return '#${color.value.toRadixString(16).substring(2).toUpperCase()}';
  }

  // --- Main Submission Logic ---
  Future<void> submitAddCar() async {
    emit(const AddCarState.addCarloading()); // Indicate loading state

    // --- 1. Validation ---
    final imagesToUpload = selectedImages.where((img) => img != null).toList();
    if (imagesToUpload.isEmpty) {
      emit(const AddCarState.addCarError('Please select at least one image.'));
      return;
    }
    if (selectedBrand == null) {
      emit(const AddCarState.addCarError('Please select a car brand.'));
      return;
    }
    if (selectedModel == null) {
      emit(const AddCarState.addCarError('Please select a car model.'));
      return;
    }
    if (selectedYear == null) {
      emit(const AddCarState.addCarError('Please select the car year.'));
      return;
    }
    // Assuming 'Other' color means user typed something (not implemented here)
    // For now, require a palette color selection
    if (selectedColor == null /* && !selectedOtherColor */ ) {
      emit(const AddCarState.addCarError('Please select a car color.'));
      return;
    }
    if (selectedCarType == null) {
      emit(const AddCarState.addCarError('Please select the car type.'));
      return;
    }
    if (selectedTransmission == null) {
      emit(
        const AddCarState.addCarError('Please select the transmission type.'),
      );
      return;
    }
    if (selectedFuelType == null) {
      emit(const AddCarState.addCarError('Please select the fuel type.'));
      return;
    }
    if (seatsController.text.trim().isEmpty) {
      emit(const AddCarState.addCarError('Please enter the number of seats.'));
      return;
    }
    final int? seats = int.tryParse(seatsController.text.trim());
    if (seats == null || seats <= 0) {
      emit(
        const AddCarState.addCarError('Please enter a valid number of seats.'),
      );
      return;
    }
    if (priceController.text.trim().isEmpty) {
      emit(const AddCarState.addCarError('Please enter the price per day.'));
      return;
    }
    final int? price = int.tryParse(priceController.text.trim());
    if (price == null || price <= 0) {
      emit(
        const AddCarState.addCarError('Please enter a valid price per day.'),
      );
      return;
    }
    if (locationController.text.trim().isEmpty) {
      emit(const AddCarState.addCarError('Please enter the car location.'));
      return;
    }
    // Validate features (ensure user interacted with switches)
    if (hasGPS == null || hasBluetooth == null || hasAC == null) {
      showFeatureValidationError = true; // Trigger UI message
      emit(
        const AddCarState.addCarError('Please specify all features (Yes/No).'),
      );
      return;
    } else {
      showFeatureValidationError = false; // Reset if validation passes now
    }

    // --- 2. Prepare Data ---
    try {
      // TODO: Implement Image Upload Logic
      // This part needs to upload images (e.g., to Firebase Storage)
      // and get back the download URLs.
      // For now, we'll use placeholder paths/empty list.
      List<String> imageUrls = []; // Replace with actual URLs after upload
      // Example placeholder:
      // imageUrls = imagesToUpload.map((_) => 'placeholder/path/${_uuid.v4()}.jpg').toList();

      const String ownerId = "PLACEHOLDER_OWNER_ID";

      // Generate unique car ID
      final String carId = _uuid.v4();

      // Create CarModel instance
      final carToAdd = CarModel(
        id: carId,
        ownerId: ownerId,
        images: imageUrls, // Use the URLs obtained after upload
        brand: selectedBrand!,
        model: selectedModel!,
        year: selectedYear!,
        type: selectedCarType!,
        transmission: selectedTransmission!,
        fuelType: selectedFuelType!,
        seats: seats,
        color: _colorToHexString(selectedColor!), // Convert color to hex string
        pricePerDay: price,
        location: locationController.text.trim(),
        isAvailable: true, // Default for new car
        createdAt: DateTime.now(), // Set creation timestamp
        description: descriptionController.text.trim(),
        hasAC: hasAC!,
        hasBluetooth: hasBluetooth!,
        hasGPS: hasGPS!,
        // rating defaults in model
      );

      // --- 3. Call Repository ---
      await _carRepo.addCar(carToAdd);

      // --- 4. Emit Success ---
      emit(const AddCarState.addCarSuccess('Car added successfully!'));
      // Optionally reset fields here after success if needed
    } catch (error) {
      // --- 5. Handle Errors ---
      final errorMessage = AppExceptionHandler.getMessage(error);
      emit(AddCarState.addCarError(errorMessage));
    }
  }

  // --- Cleanup ---
  @override
  Future<void> close() {
    // Dispose text controllers
    seatsController.dispose();
    priceController.dispose();
    locationController.dispose();
    descriptionController.dispose();
    return super.close();
  }
}
