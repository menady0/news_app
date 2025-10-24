import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonizerLoading extends StatelessWidget {
  const SkeletonizerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Skeletonizer(
            child: Column(
              children: [
                Container(
                  height: size.height * 0.35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius:
                        BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  height: 20,
                  color: Colors.grey.shade300,
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  height: 25,
                  color: Colors.grey.shade300,
                ),
              ],
            ),
          ),
        ),
        childCount: 6,
      ),
    );
  }
}
