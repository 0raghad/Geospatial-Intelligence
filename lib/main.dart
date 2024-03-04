// librbirws loads

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


// app runinng function

void main() {
  runApp(MyAppLogin());
}




// Loading page where the app start 
class MyAppLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('- - Loading - -'),
        ),
        body: LoginScreen(),
      ),
    );
  }
}


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => ChooseLogin(),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF9C3FE4), Colors.red],
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Geo Spatial Intelligence',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 16.0),
              child: Text(
                '- - Loading - -',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/map.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}


//************************************************* */
// login as user or GOSI
class ChooseLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Login'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(37.7749, -122.4194), // Center the map on San Francisco
              zoom: 12.0,
            ),
            mapType: MapType.normal,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
          ),
          Opacity(
            opacity: 0.5, // 10% transparency
            child: Container(
              color: Colors.blue,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Unlock the Power of Collaboration',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(title: 'Home Page'),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white), // Button background color
                    foregroundColor: MaterialStateProperty.all(Colors.blue), // Button text color
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 40, vertical: 15)), // Button padding
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Button border radius
                      ),
                    ),
                  ),
                  child: Text('Login as Business Owner'),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => MyApp(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white), // Button background color
                    foregroundColor: MaterialStateProperty.all(Colors.blue), // Button text color
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 40, vertical: 15)), // Button padding
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Button border radius
                      ),
                    ),
                  ),
                  child: Text('Login as Administrator'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// GOSI Home Page
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales Prediction Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0; // Set the initial index to 0 (Home page)

  final List<Widget> _pages = [
    HomePage(),
    SalesPredictionPage(),
    Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}


// BO home Page
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'This is the Home Page',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SalesPredictionPage(),
                ),
              );
            },
            child: Text('Go to Sales Prediction'),
          ),
                    ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdministratorPage(),
                ),
              );
            },
            child: Text('Go to Admin page'),
          ),
           ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdminPage(),
                ),
              );
            },
            child: Text('Go to Admin Home page'),
          ),
        ],
      ),
    );
  }
}

// gosi page
class AdminPage extends StatelessWidget {
  final String userName = 'Ali';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('Administrator Page'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back, $userName!',
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            ),
            SizedBox(height: 8.0),
            Text(
              'Administrator',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: _buildDataBox(
                    title: 'New Subscriptions',
                    value: '10',
                    color: Color.fromARGB(255, 236, 222, 246),
                    arrowIcon: Icons.arrow_downward,
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: _buildDataBox(
                    title: 'Total Subscriptions',
                    value: '100',
                    color: Color.fromARGB(59, 159, 236, 196),
                    arrowIcon: Icons.arrow_upward,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Customer Growth',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                _buildLegendItem('Male', Colors.red),
                SizedBox(width: 8.0),
                _buildLegendItem('Female', Colors.purple),
                SizedBox(width: 8.0),
                _buildLegendItem('New Customer', Colors.grey),
              ],
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: charts.BarChart(
                  _createSampleData(),
                  animate: true,
                  barGroupingType: charts.BarGroupingType.stacked,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDataBox({
    required String title,
    required String value,
    required Color color,
    required IconData arrowIcon,
  }) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Center(
              child: Icon(
                arrowIcon,
                color: Color.fromARGB(255, 104, 56, 134),
                size: 18.0,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            value,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem(String label, Color color) {
    return Row(
      children: [
        Container(
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 4.0),
        Text(label, style: TextStyle(color: Colors.white))
      ],
    );
  }

  List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final maleData = [
      OrdinalSales('Jan', 5),
      OrdinalSales('Feb', 10),
      OrdinalSales('Mar', 8),
      // Add more data points as needed
    ];

    final femaleData = [
      OrdinalSales('Jan', 7),
      OrdinalSales('Feb', 12),
      OrdinalSales('Mar', 6),
      // Add more data points as needed
    ];

    final newData = [
      OrdinalSales('Jan', 3),
      OrdinalSales('Feb', 5),
      OrdinalSales('Mar', 4),
      // Add more data points as needed
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Male',
        domainFn: (OrdinalSales sales, _) => sales.month,
       measureFn: (OrdinalSales sales, _) => sales.sales,
        data: maleData,
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(Colors.red),
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Female',
        domainFn: (OrdinalSales sales, _) => sales.month,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: femaleData,
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(Colors.purple),
      ),
      charts.Series<OrdinalSales, String>(
        id: 'New Customer',
        domainFn: (OrdinalSales sales, _) => sales.month,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: newData,
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(Colors.grey),
      ),
    ];
  }
}

class OrdinalSales {
  final String month;
  final int sales;

  OrdinalSales(this.month, this.sales);
}


// home page for users
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _launchMaps() async {
    final latitude = '37.7749';
    final longitude = '-122.4194';
    final url =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _buildImageContainer(String imagePath, BuildContext context) {
    return Container(
      height: 450.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            imagePath,
            height: 100.0,
            width: 100.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              children: [
                _buildServiceIcon(
                    Icons.location_on, 'Find optimal location', context),
                _buildServiceIcon(Icons.shopping_bag, 'Sales prediction',
                    context),
                _buildServiceIcon(
                    Icons.insert_chart, 'Saved reports', context),
                _buildServiceIcon(
                    Icons.star, 'Saved locations', context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceIcon(
      IconData icon, String label, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (label == 'Find optimal location') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OptimalLocationPage()),
          );
        } else if (label == 'Saved reports') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Page2()),
          );
        } else if (label == 'Saved locations') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Page3()),
          );} else if (label == 'Sales prediction') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SalesPredictionPage()),
          );
        } else {
          // Handle other icons
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 48.0,
            color: Colors.white,
          ),
          SizedBox(height: 8.0),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to LoginPage when the logout button is pressed
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ChooseLogin()),
              );
            },
            icon: Icon(Icons.logout), // Use the logout icon
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 40.0),
            Text(
              'Welcome Back, User Name!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'New Trends',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            _buildImageContainer('assets/leap24.png', context),
            Spacer(),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF9C3FE4), Colors.red],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StaticsPage()),
                      );
                    },
                    icon: Icon(Icons.bar_chart),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: _launchMaps,
                    icon: Icon(Icons.map),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// sales prediction
class SalesPredictionPage extends StatefulWidget {
  @override
  _SalesPredictionPageState createState() => _SalesPredictionPageState();
}

class _SalesPredictionPageState extends State<SalesPredictionPage> {
  String selectedTime = 'Weekly';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Sales Predictions'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sales Prediction Report',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement save functionality here
                    // You can display a snackbar or perform any other action
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Report saved!')),
                    );
                  },
                  child: Text('Save'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  'Total Sales: \$5000',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedTime = 'Weekly';
                    });
                  },
                  child: Text('Weekly'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      selectedTime == 'Weekly' ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedTime = 'Monthly';
                    });
                  },
                  child: Text('Monthly'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      selectedTime == 'Monthly' ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedTime = 'Yearly';
                    });
                  },
                  child: Text('Yearly'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      selectedTime == 'Yearly' ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: LineChartWidget(selectedTime: selectedTime),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Product Sales Predictions',
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Product Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Quantity Sold',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Price',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        _buildProductRow('Product A', 100, 10.0),
                        _buildProductRow('Product B', 200, 20.0),
                        // Add more product rows based on your sales predictions
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductRow(String productName, int quantitySold, double price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(productName),
        Text(quantitySold.toString()),
        Text('\$${price.toStringAsFixed(2)}'),
      ],
    );
  }
}



class LineChartWidget extends StatelessWidget {
  final String selectedTime;

  LineChartWidget({required this.selectedTime});

  @override
  Widget build(BuildContext context) {
    return charts.TimeSeriesChart(
      _createSampleData(),
      animate: true,
    );
  }

  List<charts.Series<LineChartData, DateTime>> _createSampleData() {
    final data = [
      LineChartData(DateTime(2022, 1, 1), 100),
      LineChartData(DateTime(2022, 2, 1), 200),
      LineChartData(DateTime(2022, 3, 1), 150),
      // Add more data points based on your sales data
    ];

    return [
      charts.Series<LineChartData, DateTime>(
        id: 'Sales',
        domainFn: (LineChartData sales, _) => sales.date,
        measureFn: (LineChartData sales, _) => sales.amount,
        data: data,
      ),
    ];
  }
}

class LineChartData {
  final DateTime date;
  final int amount;

  LineChartData(this.date, this.amount);
}
class Page3 extends StatefulWidget {
  Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}


// saved locations
class _Page3State extends State<Page3> {
 String _searchText = '';
  List<String> _searchResults = [];

  void _search() {
    // Perform search based on _searchText
    // For example, here we're just adding some dummy results
    setState(() {
      _searchResults = [
        'Result 1 for $_searchText',
        'Result 2 for $_searchText',
        'Result 3 for $_searchText',
      ];
    });
  }
  void _launchMaps() async {
  // Specify the latitude and longitude of the location you want to display
  final latitude = '37.7749';
  final longitude = '-122.4194';

  // Create the URL with the latitude and longitude
  final url = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';

  // Check if the URL can be launched
  if (await canLaunch(url)) {
    // Launch the URL
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1D1617).withOpacity(0.11),
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15, left: 20, right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff1D1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0,
                )
              ],
            ),
            child: SizedBox(
              width: 400,
              height: 50,
              child: TextField(
                onChanged: (value) {
                  setState(() {
                _searchText = value;
              });
                },
                onSubmitted: (value) {
                  _search();
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Location Name',
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(0.1),
                    child: GestureDetector(
                      onTap: () {
                        // Handle filter icon tap
                      },
                      child: Transform.scale(
                        scale: 0.5,
                        child: Image.asset('assets/filter.png'),
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length, // Set itemCount to the length of searchResults
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(_searchResults[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 44,
                          height: 44,
                          child: GestureDetector(
                            onTap: () {
                            _launchMaps();
                            },
                            child: Image.asset('assets/location.png'),
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }


  AppBar appBar() {
    return AppBar(
      title: Text('Saved Locations'),
    );
  }

  void _openFilterPage() {
    // Implement logic to open the filter page here
    // For example:
    // Navigator.push(context, MaterialPageRoute(builder: (context) => FilterPage()));
  }
}



class OptimalLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Optimal Location'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Upload New File',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0), // Add spacing between the title and the box
            Container(
              width: 350.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Icon(
                  Icons.cloud_upload,
                  size: 64.0,
                  color: Color(0xFF9C3FE4), // Set icon color to match gradient colors
                ),
              ),
            ),
            SizedBox(height: 20.0), // Add spacing before the button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2 ()),
                );
              },
              child: Text('RUN my optimal locations AI model'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF9C3FE4), Colors.red],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {}, // Home icon onPressed function
              icon: Icon(Icons.home),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {}, // Statistics icon onPressed function
              icon: Icon(Icons.bar_chart),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {}, // User icon onPressed function
              icon: Icon(Icons.person),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
      ),
      //body: GoogleMap(
        //initialCameraPosition: CameraPosition(
         // target: LatLng(37.7749, -122.4194), // Default location
          //zoom: 12,
       // ),
        // You can further customize the map options here
      //),
    );
  }
}



class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  String _searchText = '';
  List<String> _searchResults = [];

  void _search() {
    // Perform search based on _searchText
    // For example, here we're just adding some dummy results
    setState(() {
      _searchResults = [
        'Result 1 for $_searchText',
        'Result 2 for $_searchText',
        'Result 3 for $_searchText',
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
              },
              onSubmitted: (value) {
                _search();
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search Reports',
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    _search();
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_searchResults[index]),
                  onTap: () {
                    // Handle tapping on search results
                    print('Tapped on ${_searchResults[index]}');
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text('Saved Locations'),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop(); // Navigate back
        },
      ),
    );
  }
}



class StaticsPage extends StatefulWidget {
  @override
  _StaticsPageState createState() => _StaticsPageState();
}

class _StaticsPageState extends State<StaticsPage> {
  // Define variables to hold selected city and district
  String selectedCity = 'Riyadh';
  String selectedDistrict = 'Riyadh'; // Set default district to Riyadh

  // Define map to hold average incomes for districts
  Map<String, int> averageIncomes = {
    'Riyadh':12000 , // Set average income for Riyadh
    'Yasmin': 10293,
    'Narjas': 9800,
    'Alrabee': 7800,
    'almonsayh': 10293,
    'Alnafl': 9800,
    

  };

  // Fake data for district details
  Map<String, Map<String, String>> districtDetails = {
    'Riyadh': {
      'Population': '8M',
      'Total Coffee': '1200',
      'Saudis Rate': '75%',
      'Male Rate': '55%',
    },
    'Yasmin': {
      'Population': '78,000',
      'Total Coffee': '100',
      'Saudis Rate': '85%',
      'Male Rate': '60%',
    },
    'Narjas': {
      'Population': '30,000',
      'Total Coffee': '43',
      'Saudis Rate': '80%',
      'Male Rate': '50%',
    },
    'Alrabee': {
      'Population': '50,000',
      'Total Coffee': '34',
      'Saudis Rate': '75%',
      'Male Rate': '55%',
    },
    'almonsayh': {
      'Population': '45,000',
      'Total Coffee': '54',
      'Saudis Rate': '85%',
      'Male Rate': '60%',
    },
    'Alnafl': {
      'Population': '30,000',
      'Total Coffee': '33',
      'Saudis Rate': '80%',
      'Male Rate': '50%',
    },
    
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('General Statics'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // White box around the city dropdown
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              value: selectedCity,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedCity = newValue;
                  });
                }
              },
              items: <String>['Riyadh'].map<DropdownMenuItem<String>>((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city, style: TextStyle(color: Colors.black)),
                );
              }).toList(),
            ),
          ),
          // White box around the district dropdown
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              value: selectedDistrict,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedDistrict = newValue;
                  });
                }
              },
              items: <String>['Riyadh', 'Yasmin', 'Narjas','Alrabee','almonsayh','Alnafl'].map<DropdownMenuItem<String>>((String district) {
                return DropdownMenuItem<String>(
                  value: district,
                  child: Text(district, style: TextStyle(color: Colors.black)),
                );
              }).toList(),
            ),
          ),
          // Circle with average income
Container(
  margin: EdgeInsets.symmetric(vertical: 20.0),
  width: 150.0,
  height: 150.0,
  child: Stack(
    alignment: Alignment.center,
    children: [
      // Transparent circle container for the border
      Container(
        width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black.withOpacity(0.1), width: 10.0),
        ),
      ),
      // Container with faded gradient for the inner part
      Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xFF9C3FE4), Colors.red], // Faded gradient colors
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\$${averageIncomes[selectedDistrict]}',
              style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'SAR',
              style: TextStyle(color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.0),
            Text(
              'Average Income',
              style: TextStyle(color: Colors.white, fontSize: 13.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ],
  ),
),


          // Container with statistics in a 2x2 grid format
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildStatBox("Population", Icons.group, districtDetails[selectedDistrict]!['Population']!),
                    _buildStatBox("Total Coffee", Icons.local_cafe, districtDetails[selectedDistrict]!['Total Coffee']!),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildStatBox("Saudis Rate", Icons.people, districtDetails[selectedDistrict]!['Saudis Rate']!),
                    _buildStatBox("Male Rate", Icons.male, districtDetails[selectedDistrict]!['Male Rate']!),
                  ],
                ),
              ],
            ),
          ),
          // Add your statistics content here
          Expanded(
            child: Center(
              child: Text(
                'Statistics will be displayed here',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to build statistics item as a box with an icon
  Widget _buildStatBox(String label, IconData icon, String value) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(12.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40.0,
              color: Colors.black,
            ),
            SizedBox(height: 8.0),
            Text(
              label,
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
            SizedBox(height: 4.0),
            Text(
              value,
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}


// Gosi page 
class AdministratorPage extends StatelessWidget {
  final List<String> topDistricts = ['Riyadh', 'Jeddah', 'Dammam'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Earnings History',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      height: 200.0,
                      child: TotalEarningsChart(
                        _createSampleData(), // Replace this with your actual data
                        animate: true,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Handle Weekly option
                          },
                          child: Text('Weekly'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle Monthly option
                          },
                          child: Text('Monthly'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle Yearly option
                          },
                          child: Text('Yearly'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: _buildDataBox(
                        title: 'New Subscriptions',
                        value: '10',
                        percentage: '+2.5%',
                        color: Color.fromARGB(255, 255, 255, 255),
                        arrowIcon: Icons.arrow_downward,
                        
                      
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: _buildDataBox(
                        title: 'Total Subscriptions',
                        value: '100',
                        percentage: '-1.8%',
                        color: Color.fromARGB(255, 255, 255, 255),
                        arrowIcon: Icons.arrow_upward,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(height: 16.0),
                    Text(
                      'Top Subscribers Locations',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.flag, color: Colors.white, size: 24.0),
                        SizedBox(width: 8.0),
                        Text(
                          'Our most Subscribers in Saudi Arabia',
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Top City: Riyadh',
                            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Total Subscribers: 50',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'Other Cities:',
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8.0),
                          Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: topDistricts.map((district) {
                                return Text(
                                  district,
                                  style: TextStyle(fontSize: 14.0),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataBox({
    required String title,
    required String value,
    required String percentage,
    required Color color,
    required IconData arrowIcon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0)),
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Text(
                value,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Color(0xFF9C3FE4)),
              ),
              SizedBox(width: 4.0),
              Icon(arrowIcon, color:Color(0xFF9C3FE4) ),
              SizedBox(width: 4.0),
              Text(
                percentage,
                style: TextStyle(fontSize: 14.0, color: Color(0xFF9C3FE4)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TotalEarningsChart extends StatelessWidget {
  final List<charts.Series<LinearSales, int>> seriesList; // Add <LinearSales, int> here
  final bool animate;

  TotalEarningsChart(this.seriesList, {required this.animate});

  @override
  Widget build(BuildContext context) {
    return charts.LineChart(
      seriesList,
      animate: animate,
      defaultRenderer: charts.LineRendererConfig(
        includePoints: true,
        includeArea: true,
        stacked: false,
      ),
      primaryMeasureAxis: charts.NumericAxisSpec(
        tickProviderSpec: charts.BasicNumericTickProviderSpec(
          desiredTickCount: 5,
        ),
      ),
    );
  }
}

List<charts.Series<LinearSales, int>> _createSampleData() {
  final data = [
    LinearSales(0, 5),
    LinearSales(1, 25),
    LinearSales(2, 100),
    LinearSales(3, 75),
    LinearSales(4, 80),
    LinearSales(5, 45),
    LinearSales(6, 20),
  ];

  return [
    charts.Series<LinearSales, int>(
      id: 'Earnings',
      colorFn: (_, __) => charts.Color.fromHex(code: '#9C3FE4'),
      domainFn: (LinearSales sales, _) => sales.year,
      measureFn: (LinearSales sales, _) => sales.sales,
      data: data,
    ),
  ];
}

class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}