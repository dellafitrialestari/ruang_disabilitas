import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

int id = 0;

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDfTbDH3kKBrZmSXE4g49Xyy2_BJhOwbRQ",
            authDomain: "flutter-authentication-a-3fc81.firebaseapp.com",
            projectId: "flutter-authentication-a-3fc81",
            storageBucket: "flutter-authentication-a-3fc81.appspot.com",
            messagingSenderId: "596158069577",
            appId: "1:596158069577:web:b9cb619f482daa2e603898",
            measurementId: "G-4EZWCY6Z1L"));
  } else {
    await Firebase.initializeApp();
  }
}

@pragma('vm:entry-point')
configureFCM() async {
  // AwesomeNotifications().initialize("resource://drawable/ic_launcher", [
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
        channelKey: "ruangdisabilitas_channel",
        channelName: "Ruang Disabilitas Channel",
        channelDescription: "Showing Ruang Disabilitas Notification",
        defaultColor: Colors.greenAccent,
        ledColor: Colors.greenAccent),
  ]);
  await initFirebase();
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  messaging.setAutoInitEnabled(true);
  await messaging.setAutoInitEnabled(true);
  debugPrint("Token : ${await messaging.getToken()}");
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: true,
    badge: true,
    carPlay: true,
    criticalAlert: true,
    provisional: true,
    sound: true,
  );

  if (Platform.isIOS) {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
  }

  if (Platform.isAndroid) {
    FirebaseMessaging.onBackgroundMessage((message) async {
      if (kDebugMode) {
        print("Notif data Background: ${message.data}");
      }
      if (message.notification != null) {
        if (kDebugMode) {
          print("Notif title: ${message.notification?.title}");
          print("Notif message: ${message.notification?.body}");
        }
      }
      AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: id++,
            channelKey: "ruangdisabilitas_channel",
            title: message.notification?.title,
            body: message.notification?.body),
      );
      return;
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      if (kDebugMode) {
        print("Notif data AppOpen: ${message.data}");
      }
      if (message.notification != null) {
        if (kDebugMode) {
          print("Notif title: ${message.notification?.title}");
          print("Notif message: ${message.notification?.body}");
        }
      }
      AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: id++,
            channelKey: "ruangdisabilitas_channel",
            title: message.notification?.title,
            body: message.notification?.body),
      );
    });
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      if (kDebugMode) {
        print("Notif data: ${message.data}");
      }
      if (message.notification != null) {
        if (kDebugMode) {
          print("Notif title: ${message.notification?.title}");
          print("Notif message: ${message.notification?.body}");
        }
      }
      AwesomeNotifications().createNotification(
        content: NotificationContent(
            id: id++,
            channelKey: "ruangdisabilitas_channel",
            title: message.notification?.title,
            body: message.notification?.body),
      );
    });
  }
  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    if (kDebugMode) {
      print('User granted permission');
    }
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    if (kDebugMode) {
      print('User granted provisional permission');
    }
  } else {
    if (kDebugMode) {
      print('User declined or has not accepted permission');
    }
  }
}
