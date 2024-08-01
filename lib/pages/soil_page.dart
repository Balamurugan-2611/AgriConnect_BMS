import 'package:flutter/material.dart';

class SoilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soil Health Monitoring'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Current Soil Conditions',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20),
            _buildSoilCondition('Soil Moisture', '45%', '30-50%'),
            _buildSoilCondition('Soil pH', '6.5', '6.0-7.0'),
            _buildSoilCondition('Nitrogen Level', '12 ppm', '10-20 ppm'),
            _buildSoilCondition('Phosphorus Level', '15 ppm', '10-20 ppm'),
            _buildSoilCondition('Potassium Level', '100 ppm', '80-120 ppm'),
            _buildSoilCondition('Soil Temperature', '22°C (72°F)', '18-24°C (64-75°F)'),
            _buildSoilCondition('Organic Matter Content', '5%', '3-6%'),
            _buildSoilCondition('Soil Salinity', '0.2 dS/m', '0.0-0.5 dS/m'),
            _buildSoilCondition('Soil Texture', 'Loam', 'Ideal for most crops'),
            SizedBox(height: 20),
            Text(
              'Advanced Soil Health Metrics',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20),
            _buildAdvancedMetric('Soil Respiration Rate', '150 mg CO₂/kg/day', '100-200 mg CO₂/kg/day'),
            _buildAdvancedMetric('Soil Organic Carbon', '2.0%', '1.5-3.0%'),
            _buildAdvancedMetric('Soil Moisture Holding Capacity', '30%', '25-35%'),
            _buildAdvancedMetric('Soil Microbial Biomass', '300 mg/kg', '250-350 mg/kg'),
            _buildAdvancedMetric('Soil Erosion Risk', 'Low', 'Low'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add functionality like sending data to cloud, or suggesting actions based on conditions
              },
              child: Text('Analyze Soil Health'),
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

  Widget _buildSoilCondition(String property, String value, String optimalRange) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(property),
        subtitle: Text('Current Value: $value\nOptimal Range: $optimalRange'),
        leading: Icon(Icons.eco, color: Colors.green),
      ),
    );
  }

  Widget _buildAdvancedMetric(String metric, String value, String optimalRange) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(metric),
        subtitle: Text('Current Value: $value\nOptimal Range: $optimalRange'),
        leading: Icon(Icons.analytics, color: Colors.blue),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SoilPage(),
  ));
}
