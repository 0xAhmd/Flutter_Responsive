import 'package:flutter/material.dart';
import 'package:flutter_reposnsive/constants.dart';

class IPad extends StatelessWidget {
  const IPad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("P A D", style: TextStyle(color: Colors.white)),
      ),
      body: Row(
        children: [
          // Left side
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(accentColor),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        width: double.infinity,
                      ),
                    ),
                  ),
                ),
                SliverList.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(accentColor),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),

          // Right side
          Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8, right: 13 ),
            child: Container(
              width: 200,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xff85c2f6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
