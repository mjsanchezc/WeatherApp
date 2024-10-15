# Weather App

A simple weather app built using Swift, SwiftUI, and Combine that fetches current weather data for any location. The app uses a weather API to get real-time weather data and displays it in a user-friendly interface.

## Features

- TFetches current weather data for any city.
- Displays temperature, weather conditions, and other details.
- Clean and responsive UI built with SwiftUI.
- Uses Combine for asynchronous data fetching and binding.
- Error handling for API requests.

## Requirements

- iOS 15.0+
- Xcode 12.0+
- Swift 5.3+

## API Integration

This app uses the OpenWeather API to fetch weather data.

To use the app, you need to obtain an API key:

1. Sign up for a free account on OpenWeather.
2. Get your API key.
3. Add the API key to your project by replacing the placeholder in the WeatherService.swift file:
```swift
let apiKey = "YOUR_API_KEY"
```

## Technologies Used
- Swift - Programming language.
- SwiftUI - User Interface framework.
- Combine - Framework for handling asynchronous events.
- OpenWeather API - For fetching weather data.