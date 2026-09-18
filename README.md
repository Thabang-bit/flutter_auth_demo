# Flutter Auth Demo

A simple Flutter app demonstrating email/password authentication using Firebase Authentication. Users can sign up, log in, stay logged in across sessions, and log out.

## Features

- **Sign up** with email and password
- **Log in** with an existing account
- **Auto-routing** based on auth state — signed-in users go straight to the Home screen, signed-out users see the login form
- **Log out** from the Home screen
- **Loading indicator** while a sign-in/sign-up request is in progress
- **Error handling** with readable error messages from Firebase (e.g. wrong password, email already in use)

## Built With

- [Flutter](https://flutter.dev/) & [Dart](https://dart.dev/)
- [Firebase Authentication](https://firebase.google.com/docs/auth) via `firebase_auth`
- `firebase_core` for Firebase initialization

## Getting Started

1. Make sure you have the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.
2. Clone this repository:
   ```
   git clone https://github.com/Thabang-bit/flutter_auth_demo.git
   cd flutter_auth_demo
   ```
3. Install dependencies:
   ```
   flutter pub get
   ```
4. This project uses a Firebase project configured for Email/Password authentication. To run it against your own Firebase project, replace the values in `lib/firebase_options.dart` with your own project's config (found in Firebase Console > Project Settings > Your apps).
5. Run the app:
   ```
   flutter run
   ```

## How It Works

- `main.dart` initializes Firebase before the app starts.
- `AuthGate` listens to Firebase's auth state stream and shows either `LoginScreen` or `HomeScreen` depending on whether someone is signed in — no manual navigation needed.
- `LoginScreen` toggles between Sign Up and Log In modes and calls the matching Firebase Auth method.
- `HomeScreen` displays the signed-in user's email and provides a sign-out button.

## Screenshots

| Sign Up | Loading | Home |
|---|---|---|
| ![Sign up screen](screenshots/signup.png) | ![Loading spinner](screenshots/loading.png) | ![Home screen](screenshots/home.png) |

## What I Learned

Building this project helped me practice:
- Integrating Firebase Authentication into a Flutter app
- Reacting to auth state changes with `StreamBuilder`
- Handling asynchronous operations and loading states with `setState`
- Displaying meaningful error messages from `FirebaseAuthException`
- Managing Firebase project configuration, including API key restrictions in Google Cloud Console

## Possible Future Improvements

- Add password reset via email
- Add Google Sign-In as an additional provider
- Add form validation before submitting (e.g. valid email format, password length)
