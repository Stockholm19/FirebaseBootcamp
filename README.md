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

## 🔐 Конфиденциальные файлы

Файл `FirebaseBootcamp/GoogleService-Info.plist` добавлен в `.gitignore` и не загружается в репозиторий, так как содержит ключи Firebase.

📌 Чтобы приложение работало:
1. Перейди в [Firebase Console](https://console.firebase.google.com/)
2. Выбери проект `FirebaseBootcamp`
3. Скачай `GoogleService-Info.plist` из настроек iOS-приложения
4. Помести файл в папку `FirebaseBootcamp/` в Xcode

❗ Без этого файла проект не запустится!


## 📚 Полезные ссылки
- [Firebase Console](https://console.firebase.google.com)
- [Firebase iOS SDK на GitHub](https://github.com/firebase/firebase-ios-sdk)
