# 📱 Smart Attendance System - Admin

A custom-made Flutter application that monitors and communicates with **Smart Attendance System devices** to track and manage student attendance in real-time.

---

## 📌 Overview

The **Smart Attendance System - Admin** app is designed to be used by administrators or faculty to:

- Monitor attendance data from connected smart devices
- Interact with hardware endpoints
- Ensure smooth and efficient student attendance management

---

## 🚀 Features

- 📡 Communicates with Smart Attendance hardware
- 📊 Displays real-time attendance updates
- 👥 Manages student and device data
- 🔐 Secure and responsive interface

---

## 🛠️ Built With

- **Flutter** – for fast, cross-platform mobile development
- **Dart** – language powering Flutter
- **Smart Device Protocols** – custom communication with IoT devices

---

## 📱 Installation

```bash
# Clone the repository
git clone https://github.com/your-username/smart-attendance-system-admin.git

# Navigate into the project folder
cd smart-attendance-system-admin

# Get dependencies
flutter pub get

# Run the app
flutter run
```

🧪 Requirements
Flutter SDK (latest stable version)

Android Studio or VS Code with Flutter extensions

Physical device or emulator for testing

Supabase project credentials:

SUPABASE_URL

SUPABASE_ANON_KEY

Set these credentials in your .env file or via a secure config method.

lib/
├── core/ # Constants, utilities, themes, and common widgets
├── data/ # Repositories and data providers (e.g., Supabase APIs)
├── domain/ # Business logic, entities, and use cases
├── presentation/ # UI, screens, hooks, and state management
└── main.dart # Application entry point
