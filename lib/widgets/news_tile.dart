import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "https://images.pexels.com/photos/158651/news-newsletter-newspaper-information-158651.jpeg",
              height: size.height * 0.35,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Aliquip pariatur pariatur incididunt tempor aute irure.Aliquip pariatur pariatur incididunt tempor aute irure. Aliquip pariatur pariatur incididunt tempor aute irure.",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          Text(
            "Exercitation aute laboris non qui commodo elit id dolore dolore irure cupidatat. Est sit dolore in in sit commodo deserunt consequat minim Lorem. Nulla sunt culpa labore ex minim. Id cupidatat eiusmod consequat reprehenderit irure reprehenderit ad labore velit.",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
