# 📱 FirebaseBootcamp

Учебный SwiftUI-проект для подключения и настройки Firebase.

## 🔧 Технологии

- SwiftUI
- Firebase SDK (через Swift Package Manager)

## ⚙️ Установка Firebase

1. Добавлен через Swift Package Manager:
   https://github.com/firebase/firebase-ios-sdk

2. Выбран модуль `FirebaseAnalytics`
3. Подключён файл `GoogleService-Info.plist` в Xcode
   
4. Инициализация через `AppDelegate`:
```swift
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
```

## 🐞 Отладка

Добавлен аргумент для логов Firebase:

-FIRAnalyticsDebugEnabled

## 🎯 Цель проекта

Изучить пошаговую интеграцию и работу Firebase в iOS-приложение на SwiftUI.

## 📚 Полезные ссылки
- [Firebase Console](https://console.firebase.google.com)
- [Firebase iOS SDK на GitHub](https://github.com/firebase/firebase-ios-sdk)
