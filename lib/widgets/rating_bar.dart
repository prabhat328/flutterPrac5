import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rating;
  final Function(double) onRatingChanged;

  const RatingBar({
    super.key,
    required this.rating,
    required this.onRatingChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('1'),
            Expanded(
              child: Slider(
                value: rating,
                min: 1,
                max: 5,
                divisions: 4,
                label: rating.round().toString(),
                onChanged: onRatingChanged,
              ),
            ),
            const Text('5'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 1; i <= 5; i++)
              Icon(
                Icons.star,
                color: i <= rating.round() ? Colors.amber : Colors.grey,
                size: 32,
              ),
          ],
        ),
      ],
    );
  }
}

