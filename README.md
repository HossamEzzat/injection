# Flutter Dependency Injection (DI) Example 🚀

A simple, clean, and well-structured Flutter project demonstrating how to implement **Dependency Injection** using the `GetIt` package.

## 📖 What is this project?
This project serves as a practical guide for beginners to understand:
- **Decoupling:** How to separate business logic from the UI.
- **Service Locator Pattern:** Using `GetIt` to manage dependencies.
- **Abstractions:** Using abstract classes to make the code more flexible and testable.

## 🛠 Tech Stack
- **Framework:** [Flutter](https://flutter.dev)
- **DI Container:** [GetIt](https://pub.dev/packages/get_it)
- **Language:** Dart

## 🏗 Project Structure
```text
lib/
├── services/
│   ├── message_service.dart      # Abstract class & Implementation
├── core/
│   └── service_locator.dart      # DI Setup (GetIt configuration)
└── main.dart                     # UI Layer
