import 'package:flutter/material.dart';

class Statessheet extends StatelessWidget {
  const Statessheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      height: 400,
      // width: 250,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 14),
        child: Column(
          children: [
            Center(
              child: Text(
                "States",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                hintText: "Search a car",
                prefixIcon: Icon(Icons.search_outlined, color: Color(0xFF1582DF)),
              ),
            ),
            SizedBox(height: 12),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.location_searching_outlined, color: Color(0xFF1582DF)),
                      title: Text(
                        "Oran ",
                        style: Theme.of(context).textTheme.bodyMedium
                            ?.copyWith(
                              fontSize: 18,
                              color: Color(0xFF000000),
                            ),
                      ),
                    ),
    
                    ListTile(
                      leading: Icon(Icons.location_searching_outlined, color: Color(0xFF1582DF)),
                      title: Text(
                        "Béchar ",
                        style: Theme.of(context).textTheme.bodyMedium
                            ?.copyWith(
                              fontSize: 18,
                              color: Color(0xFF000000),
                            ),
                      ),
                    ),
    
                    ListTile(
                      leading: Icon(Icons.location_searching_outlined, color: Color(0xFF1582DF)),
                      title: Text(
                        "Alger ",
                        style: Theme.of(context).textTheme.bodyMedium
                            ?.copyWith(
                              fontSize: 18,
                              color: Color(0xFF000000),
                            ),
                      ),
                    ),
    
    
                    ListTile(
                      leading: Icon(Icons.location_searching_outlined, color: Color(0xFF1582DF)),
                      title: Text(
                        "Rilezane ",
                        style: Theme.of(context).textTheme.bodyMedium
                            ?.copyWith(
                              fontSize: 18,
                              color: Color(0xFF000000),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
