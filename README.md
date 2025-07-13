# 🚗 Taagira App - Modern Car Rental Platform

**Taagira** is a full-featured car rental app built with Flutter. It enables users to rent cars or list their own vehicles for others to rent — with a sleek UI and a robust Firebase backend.

---

## ✨ Features

- 📱 **Phone Number Auth** – Secure authentication with Firebase Auth.
- 🚘 **Browse & List Cars** – View available cars and add your own with images/details.
- 📥 **Request Management** – Accept, cancel, approve, or reject rental requests.
- 🔔 **Notifications** – Local notifications for real-time updates.
- 📄 **PDF Export** – Export rental request info to PDF.
- 📊 **Pagination & Grouping** – Optimized request list with grouping by date.
- 🖥 **Responsive UI** – Works perfectly across all screen sizes.

---

## ⚙️ Tech Stack

| Tool/Package               | Purpose                                    |
|----------------------------|--------------------------------------------|
| **Flutter**                | Cross-platform UI development              |
| **Firebase Auth**          | Phone number login                         |
| **Firestore**              | Real-time NoSQL database                   |
| **Firebase Storage**       | Upload & serve car images                  |
| **BLoC + Cubit**           | Scalable state management                  |
| **Freezed + JsonSerializable** | Data models & code generation         |
| **GetIt**                  | Dependency injection                       |
| **flutter_screenutil**     | Responsive design                          |

---

## 📸 Screenshots

### 🔐 Authentication

<img src="https://github.com/user-attachments/assets/38349023-0d4a-452c-8eb3-5ad6b91dfc9a" width="200"/>
<img src="https://github.com/user-attachments/assets/067d09d8-a592-48b8-9be9-8af590c7440c" width="200"/>

### ➕ Add Car

<img src="https://github.com/user-attachments/assets/a86edd02-78b4-475c-9cc5-55886b549902" width="200"/>
<img src="https://github.com/user-attachments/assets/78aa801f-0160-4502-b28a-cdcece91b4a7" width="200"/>
<img src="https://github.com/user-attachments/assets/b70745c4-7452-49d4-a019-cfe69bb13a15" width="200"/>
<img src="https://github.com/user-attachments/assets/d53114f8-b209-4f5f-be71-ba5b2db0d36a" width="200"/>

### 🔍 Car Details

<img src="https://github.com/user-attachments/assets/2bd1cc5a-8a1b-40b0-937a-fbd91cead3e3" width="200"/>
<img src="https://github.com/user-attachments/assets/89ae5bd7-b3d6-4bcc-9e04-97707f39b009" width="200"/>

### 📬 Request Car

<img src="https://github.com/user-attachments/assets/3ac407e7-038f-4895-b00a-5f5722ff4083" width="200"/>
<img src="https://github.com/user-attachments/assets/d1e3166f-119f-470b-b866-089d041504fb" width="200"/>

### 🗂 Request Management

<img src="https://github.com/user-attachments/assets/ae53fc9a-0d34-4965-ac8d-63ac784eaad0" width="200"/>

### ❤️ Favorites

<img src="https://github.com/user-attachments/assets/8b41bf34-3acf-4f82-a4e7-d1181adbe08e" width="200"/>

---

## 🏗️ Project Structure

```bash
lib/
├── app/
│   ├── taggira.dart           # Entry point to start the app
│   └── di/                    # Dependency injection setup
│       └── di.dart
│
├── core/
│   ├── theme/                 # App colors, styles, etc.
│   ├── routes/                # GoRouter config
│   ├── utils/                 # Formatters, extensions, constants
│   ├── widgets/               # Shared components (buttons, text fields)
│   └── server/                # Exception handler, result classes
│
├── features/
│   ├── auth/
│   │   ├── cubit/
│   │   ├── data/
│   │   ├── models/
│   │   ├── repo/
│   │   └── ui/
│   │       └── screens/
│   │           ├── login/
│   │           └── widgets/
│   │
│   ├── home/
│   │   ├── cubit/
│   │   ├── data/
│   │   ├── repo/
│   │   └── ui/
│   │       ├── home_layout.dart
│   │       └── splash_screen.dart
│   │
│   ├── car/
│   │   ├── cubit/
│   │   ├── data/
│   │   ├── models/
│   │   ├── repo/
│   │   └── ui/
│   │       └── screens/
│   │           ├── add_car_screen.dart
│   │           ├── car_details_screen.dart
│   │           ├── favorite_cars_screen.dart
│   │           └── rent_car_screens/
│   │               ├── car_pick_date_screen.dart
│   │               └── confirm_rent_screen.dart
│   │
│   ├── requests/
│   │   ├── cubit/
│   │   ├── data/
│   │   ├── models/
│   │   ├── repo/
│   │   └── ui/
│   │       ├── requests_screen.dart
│   │       └── widgets/
│   │
│   ├── user/
│   │   ├── cubit/
│   │   ├── data/
│   │   ├── models/
│   │   ├── repo/
│   │   └── ui/
│   │       ├── profile_screen.dart
│   │       └── widgets/
│
├── generated/                 # Auto-generated files
├── l10n/                      # Localization files
├── firebase_options.dart
└── main.dart

