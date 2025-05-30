import Flutter
import UIKit
import GoogleMaps
import flutter_local_notifications

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // Initialize Google Maps API
    if let googleMapsApiKey = Bundle.main.infoDictionary?["GOOGLE_MAPS_API_KEY"] as? String {
        GMSServices.provideAPIKey(googleMapsApiKey)
    }

    // Initialize Local Notifications
    // This is required to make any communication available in the action isolate.
    FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { (registry) in
        GeneratedPluginRegistrant.register(with: registry)
    }

    if #available(iOS 10.0, *) {
      UNUserNotificationCenter.current().delegate = self as UNUserNotificationCenterDelegate
    }

    if(!UserDefaults.standard.bool(forKey: "Notification")) {
      UIApplication.shared.cancelAllLocalNotifications()
      UserDefaults.standard.set(true, forKey: "Notification")
    }
    // END Local Notifications
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
