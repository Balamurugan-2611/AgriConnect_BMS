import 'package:flutter/material.dart';
import 'weather_page.dart';
import 'soil_page.dart';
import 'crop_monitoring_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart AgriConnect'),
        backgroundColor: Colors.green[700],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green[700],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.agriculture, color: Colors.white, size: 50),
                  SizedBox(height: 10),
                  Text(
                    'Smart AgriConnect',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                _showAboutDialog(context);
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://img.freepik.com/free-photo/waterfall-rainforest-with-green-forest-background_188544-47475.jpg'), // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black
                .withOpacity(0.6), // Apply a semi-transparent overlay
          ),
          ListView(
            children: <Widget>[
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Welcome to Smart AgriConnect',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                color: Colors.green[50],
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(Icons.cloud, color: Colors.blue),
                  title: Text('Weather Forecasting'),
                  subtitle:
                      Text('Stay updated with real-time weather conditions.'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WeatherPage()),
                    );
                  },
                ),
              ),
              Card(
                color: Colors.green[50],
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(Icons.terrain, color: Colors.brown),
                  title: Text('Soil Health Monitoring'),
                  subtitle: Text(
                      'Monitor the health of your soil for better crop yields.'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SoilPage()),
                    );
                  },
                ),
              ),
              Card(
                color: Colors.green[50],
                margin: EdgeInsets.all(10),
                child: ListTile(
                  leading: Icon(Icons.grass, color: Colors.green),
                  title: Text('Crop Monitoring'),
                  subtitle: Text('Track the growth and health of your crops.'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CropMonitoringPage()),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    _showChatbot(context);
                  },
                  icon: Icon(Icons.chat),
                  label: Text('Chat with AgriBot'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[700],
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'About Smart AgriConnect',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Smart AgriConnect is your one-stop solution for advanced agricultural insights. Our platform integrates the latest technologies in weather forecasting, soil health monitoring, and crop management to help farmers optimize their farming practices and improve yields.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('About Smart AgriConnect'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Smart AgriConnect is an innovative solution designed to provide real-time insights and data to farmers. From weather forecasting to soil health monitoring, our app offers everything you need to optimize your farming practices and increase crop yields.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showChatbot(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AgriBot'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Hello! I am AgriBot, your virtual assistant for all things agriculture. How can I assist you today?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextField(
              decoration:
                  InputDecoration(hintText: 'Type your question here...'),
            ),
            TextButton(
              child: Text('Send'),
              onPressed: () {
                // Add chatbot functionality here
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
  ));
}
