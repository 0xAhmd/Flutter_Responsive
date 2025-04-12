import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("D E S K T O P", style: TextStyle(color: Colors.white)),
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
                          color: Color(0xff85c2f6),
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
                          color: Color(0xff85c2f6),
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
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
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
