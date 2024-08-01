import 'package:flutter/material.dart';

class CropMonitoringPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop Monitoring'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Text('Crop Health Indicators',
                style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 10),
            _buildHealthIndicator('Soil Moisture', '45%', Icons.water),
            _buildHealthIndicator('Nutrient Levels', 'Optimal', Icons.grass),
            _buildHealthIndicator(
                'Plant Growth Stage', 'Flowering', Icons.local_florist),
            _buildHealthIndicator(
                'Leaf Color Index', 'Green - Healthy', Icons.color_lens),
            SizedBox(height: 20),
            Text('Crop Stress Detection',
                style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 10),
            _buildStressDetection('Water Stress', 'Low', Icons.opacity),
            _buildStressDetection(
                'Nutrient Deficiency', 'None Detected', Icons.eco),
            _buildStressDetection(
                'Pest Infestation', 'None Detected', Icons.bug_report),
            _buildStressDetection(
                'Disease Symptoms', 'None Detected', Icons.sick),
            SizedBox(height: 20),
            Text('Weather Insights',
                style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 10),
            _buildWeatherInsight(
                'Temperature', '22°C (72°F)', Icons.thermostat),
            _buildWeatherInsight('Humidity', '65%', Icons.water_drop),
            _buildWeatherInsight(
                'Rainfall Forecast', '20% chance of rain', Icons.umbrella),
            _buildWeatherInsight('Wind Speed', '15 km/h (9 mph)', Icons.air),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add functionality for updating crop data or other actions
              },
              child: Text('Update Crop Data'),
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

  Widget _buildHealthIndicator(String title, String value, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }

  Widget _buildStressDetection(String title, String status, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon,
            color: status == 'None Detected' ? Colors.green : Colors.red),
        title: Text(title),
        subtitle: Text(status),
      ),
    );
  }

  Widget _buildWeatherInsight(String title, String value, IconData icon) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.orange),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CropMonitoringPage(),
  ));
}
