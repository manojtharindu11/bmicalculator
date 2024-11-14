---
# BMI Calculator

A simple BMI Calculator built with Flutter. This app allows users to select their gender, adjust their height and weight, and calculates their Body Mass Index (BMI) based on these inputs. The app then categorizes the BMI result as Underweight, Normal, Overweight, or Obese.

## Features

- **Gender Selection**: Choose between Male and Female.
- **Adjust Height and Weight**: Increment or decrement values with easy-to-use buttons.
- **BMI Calculation**: Real-time BMI calculation based on height and weight.
- **BMI Category**: Displays the BMI result category (Underweight, Normal, Overweight, or Obese).

## Code Overview

- **`MainPage`**: The main screen of the app, where users can input their details and view the BMI calculation.
- **`calculateBMI`**: A helper function that calculates BMI based on height (cm) and weight (kg).
- **`bmiCategory`**: A helper function that determines the BMI category based on the calculated BMI.

## Installation and Setup

1. Clone this repository.
2. Make sure you have Flutter installed. If not, follow [Flutter's official installation guide](https://flutter.dev/docs/get-started/install).
3. Open the project in your preferred editor (e.g., VSCode, Android Studio).
4. Run `flutter pub get` to fetch the dependencies.
5. Run `flutter run` to start the application on an emulator or connected device.

## Usage

1. Select your **gender** by tapping on either the Male or Female icon.
2. Adjust your **height** and **weight** using the plus (+) and minus (-) buttons.
3. The app calculates and displays your **BMI** in real time and shows the **BMI category** below the result.

## Dependencies

This app uses Flutter’s built-in widgets and libraries.

## Acknowledgments

This app was built using a tutorial from [YouTube].

## License

This project is open-source and free to use.

--- 