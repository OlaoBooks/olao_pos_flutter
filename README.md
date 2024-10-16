# olao-pos-flutter
Olaobooks POS Flutter

## Flutter Project Base Structure
This is a basic Flutter project with a clean and scalable structure, using the GetX package for state management, navigation, and dependency injection.




### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Dart 3.5.3 or higher

## Getting Started
For help getting started with Flutter, view Flutter [documentation](https://flutter.dev/).

- Clone the repository with https `git clone https://github.com/OlaoBooks/olao_pos_flutter.git`
- Navigate to cloned folder
- Get packages using `flutter pub get`
- Run `flutter run`



### Explanation of the Folders:

- **app/data/models**: This folder contains all the data models that define the structure of data.
- **app/data/providers**: Handles API calls or other external data sources (e.g., HTTP requests).
- **app/data/repositories**: Acts as the middle layer between the data providers and controllers, providing an abstraction over the data sources.
- **app/modules**: Each feature of your app has its own module folder containing controllers, views, bindings, and other specific logic for that module.
  - **bindings**: Here, the dependency injections are set for each module.
  - **controllers**: Manages the state of your app using GetX's `GetxController`.
  - **views**: The UI of the module.
- **app/routes**: Manages the routes and navigation of your app.
  - **app_pages.dart**: Defines all the pages in the app.
  - **app_routes.dart**: Contains route names as constants.
- **app/utils**: Contains helper classes and constants used across the app.
  - **constants.dart**: Stores constant values like color schemes, text styles, etc.
  - **helpers.dart**: Utility/helper functions for various tasks.
- **main.dart**: The entry point of the Flutter app.
