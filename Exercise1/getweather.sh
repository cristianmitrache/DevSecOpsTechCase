#!/bin/bash

# OpenWeatherMap API URL with parameters (using metric because I hate imperial units)
API_URL="https://api.openweathermap.org/data/2.5/weather?q=$OWM_CITY&appid=$OWM_API_KEY&units=metric"

# Make API request and get weather data
weather_data=$(curl -s "$API_URL")

# Filter relevant information from the weather data
city=$(echo "$weather_data" | jq -r '.name')
temperature=$(echo "$weather_data" | jq -r '.main.temp')
description=$(echo "$weather_data" | jq -r '.weather[0].description')
humidity=$(echo "$weather_data" | jq -r '.main.humidity')

# Print weather information, including temperature and humidity
echo "city=\"$city\", description=\"$description\", temperature=$temperature°C, humidity=$humidity%"