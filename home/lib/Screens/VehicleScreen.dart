import 'package:flutter/material.dart';

class VehicleScreen extends StatefulWidget {
  const VehicleScreen({super.key});

  @override
  State<VehicleScreen> createState() => _VehicleScreenState();
}

class _VehicleScreenState extends State<VehicleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 16, 16),
      appBar: AppBar(
        title: const Text("Vehicle Registration"),
        backgroundColor: const Color.fromARGB(255, 27, 26, 26),
        foregroundColor: const Color.fromARGB(255, 224, 213, 213),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildVehicleDetails(),
            SizedBox(height: 16),
            _buildLicenseInformation(),
          ],
        ),
      ),
    );
  }

  Widget _buildVehicleDetails() {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Vehicle Details', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 8),
            _buildDetailContainer('Vehicle Type', 'Bike'),
            _buildDetailContainer('Vehicle Model', 'Yamaha Z01'),
            _buildDetailContainer('Vehicle No.', '98767'),
          ],
        ),
      ),
    );
  }

  Widget _buildLicenseInformation() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: const Color.fromARGB(255, 104, 104, 103), width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('License Information', style: TextStyle(color: Colors.grey)),
          SizedBox(height: 8),
          _buildDetailContainer('License No.', '10093423'),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 29, 22, 22),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.camera_alt, color: Colors.grey, size: 40),
              ),
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 29, 22, 22),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.camera_alt, color: Colors.grey, size: 40),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailContainer(String title, String value) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text('$title : ', style: TextStyle(color: Colors.grey, fontSize: 16)),
          Expanded(
              child: Text(value,
                  style: TextStyle(color: Colors.white, fontSize: 16))),
        ],
      ),
    );
  }
}
