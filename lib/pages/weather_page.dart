import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Forecasting'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Text('Current Weather', style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 10),
            _buildCurrentWeather('Temperature', '22°C (72°F)', Icons.thermostat),
            _buildCurrentWeather('Humidity', '65%', Icons.water_drop),
            _buildCurrentWeather('Wind Speed', '15 km/h (9 mph)', Icons.air),
            _buildCurrentWeather('Precipitation', '0 mm (0 inches)', Icons.invert_colors),
            SizedBox(height: 20),
            Text('5-Day Forecast', style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 10),
            _buildForecastTile('Day 1', '25°C (77°F)', '18°C (64°F)', '20%', '10 km/h (6 mph) from NW'),
            _buildForecastTile('Day 2', '26°C (79°F)', '19°C (66°F)', '30%', '12 km/h (7 mph) from N'),
            _buildForecastTile('Day 3', '24°C (75°F)', '17°C (63°F)', '50%', '15 km/h (9 mph) from NE'),
            _buildForecastTile('Day 4', '23°C (73°F)', '16°C (61°F)', '70%', '20 km/h (12 mph) from E'),
            _buildForecastTile('Day 5', '22°C (72°F)', '15°C (59°F)', '80%', '18 km/h (11 mph) from SE'),
            SizedBox(height: 20),
            Text('Additional Weather Features', style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 10),
            _buildFeatureTile('Weather Alerts', 'Receive alerts for severe weather conditions like storms, frost, and heavy rain.', Icons.warning),
            _buildFeatureTile('Climate Data', 'Access historical climate data to make informed decisions.', Icons.history),
            _buildFeatureTile('Rainfall Forecasting', 'Monitor expected rainfall to optimize irrigation.', Icons.umbrella),
            _buildFeatureTile('UV Index', 'Check the UV index to manage outdoor activities.', Icons.wb_sunny),
            _buildFeatureTile('Sunrise & Sunset', 'View sunrise and sunset times to plan your day.', Icons.wb_twighlight),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add functionality for refreshing weather data or other actions
              },
              child: Text('Refresh Weather Data'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrentWeather(String title, String value, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }

  Widget _buildForecastTile(String day, String highTemp, String lowTemp, String chanceOfRain, String wind) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(Icons.calendar_today, color: Colors.blue),
        title: Text(day),
        subtitle: Text('High: $highTemp, Low: $lowTemp\nChance of Rain: $chanceOfRain\nWind: $wind'),
      ),
    );
  }

  Widget _buildFeatureTile(String title, String description, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.orange),
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WeatherPage(),
  ));
}
