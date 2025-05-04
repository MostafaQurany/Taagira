// lib/features/car/data/car_data_source.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:taggira/core/utils/server/app_exceptions_handler.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/repo/car_repo.dart';

class CarDataSource implements CarRepo {
  // Get the Firestore instance
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Define the collection reference for better readability
  late final CollectionReference<Map<String, dynamic>> _carsCollection;

  CarDataSource() {
    _carsCollection = _firestore.collection(
      'cars',
    ); // Use 'cars' as the collection name
  }

  @override
  Future<void> addCar(CarModel carModel) async {
    try {
      await _carsCollection.doc(carModel.id).set(carModel.toJson());
    } on FirebaseException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteCar(String carId) async {
    try {
      await _carsCollection.doc(carId).delete();
    } on FirebaseException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CarModel>> getAllCars() async {
    try {
      final querySnapshot =
          await _carsCollection
              // Optional: Order by creation date or another field
              // .orderBy('createdAt', descending: true)
              .get();

      // Map each document snapshot to a CarModel
      return querySnapshot.docs.map((doc) {
        return CarModel.fromJson(doc.data());
      }).toList();
    } on FirebaseException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CarModel?> getCarById(String carId) async {
    try {
      final docSnapshot = await _carsCollection.doc(carId).get();

      if (docSnapshot.exists && docSnapshot.data() != null) {
        // If the document exists, parse it into a CarModel
        return CarModel.fromJson(docSnapshot.data()!);
      } else {
        return null;
      }
    } on FirebaseException catch (e) {
      throw DatabaseException(
        message: e.message ?? 'Failed to get car by ID from Firestore',
        code: e.code,
      );
    } catch (e) {
      throw DatabaseException(
        message: 'An unexpected error occurred: ${e.toString()}',
      );
    }
  }

  @override
  Future<List<CarModel>> searchCars(String query) async {
    // Firestore's basic querying is limited for full-text search.
    // This example performs a prefix search on the 'brand' field (case-sensitive).
    // For better search (case-insensitive, multiple fields), consider:
    // 1. Storing lowercase versions of fields (e.g., 'brand_lowercase').
    // 2. Using a dedicated search service like Algolia or Typesense integrated with Firebase.
    // 3. Fetching all cars and filtering client-side (only suitable for small datasets).

    if (query.isEmpty) {
      return getAllCars(); // Return all if query is empty
    }

    try {
      // Example: Search by brand prefix (case-sensitive)
      final querySnapshot =
          await _carsCollection
              .where('brand', isGreaterThanOrEqualTo: query)
              .where(
                'brand',
                isLessThanOrEqualTo: '$query\uf8ff',
              ) // '\uf8ff' is a high Unicode character for prefix matching
              .get();

      // Example: Search by model prefix (case-sensitive) - combine results if needed
      // final modelQuerySnapshot = await _carsCollection
      //     .where('model', isGreaterThanOrEqualTo: query)
      //     .where('model', isLessThanOrEqualTo: query + '\uf8ff')
      //     .get();

      // Combine and deduplicate results if searching multiple fields
      // For simplicity, we'll just return the brand search results here

      return querySnapshot.docs
          .map((doc) => CarModel.fromJson(doc.data()))
          .toList();
    } on FirebaseException catch (e) {
      throw DatabaseException(
        message: e.message ?? 'Failed to search cars in Firestore',
        code: e.code,
      );
    } catch (e) {
      throw DatabaseException(
        message: 'An unexpected error occurred: ${e.toString()}',
      );
    }
  }

  @override
  Future<void> updateCar(CarModel carModel) async {
    try {
      // Use update to modify existing fields without overwriting the entire document
      // If you want to replace the document entirely (less common for updates), use set().
      await _carsCollection.doc(carModel.id).update(carModel.toJson());
    } on FirebaseException catch (e) {
      // Firestore throws an error if the document doesn't exist when using update()
      if (e.code == 'not-found') {
        throw DatabaseException(
          message:
              'Cannot update car: Document with ID ${carModel.id} not found.',
          code: e.code,
        );
      }
      throw DatabaseException(
        message: e.message ?? 'Failed to update car in Firestore',
        code: e.code,
      );
    } catch (e) {
      throw DatabaseException(
        message: 'An unexpected error occurred: ${e.toString()}',
      );
    }
  }
}
