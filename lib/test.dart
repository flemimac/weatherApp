import 'package:flutter/material.dart';
import 'designs/designs.dart';

class LocationsTestPage extends StatelessWidget {
  const LocationsTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // Back icon placeholder
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            size: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('Select City', style: titleStyle),
                    ],
                  ),
                  // Add location icon placeholder
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add, size: 20, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              // Search bar
              Container(
                height: 48,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey, size: 24),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for a city',
                          border: InputBorder.none,
                          hintStyle: appBarDescStyle,
                        ),
                        style: titleStyle,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              // Locations list (пример с 3 городами)
              Expanded(
                child: ListView(
                  children: [
                    _LocationTile(
                      city: 'London',
                      country: 'United Kingdom',
                      isSelected: true,
                    ),
                    _LocationTile(city: 'Paris', country: 'France'),
                    _LocationTile(city: 'New York', country: 'USA'),
                    // ... можно добавить еще
                  ],
                ),
              ),
              // Bottom button
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Select',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LocationTile extends StatelessWidget {
  final String city;
  final String country;
  final bool isSelected;
  const _LocationTile({
    required this.city,
    required this.country,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        color: isSelected ? primaryColor.withOpacity(0.05) : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? primaryColor : Colors.grey.shade200,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          // Location icon placeholder
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.location_on, color: Colors.black, size: 20),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(city, style: titleStyle),
                Text(country, style: appBarDescStyle),
              ],
            ),
          ),
          // Checkmark if selected
          if (isSelected)
            const Icon(Icons.check_circle, color: primaryColor, size: 24)
          else
            const SizedBox(width: 24),
        ],
      ),
    );
  }
}
