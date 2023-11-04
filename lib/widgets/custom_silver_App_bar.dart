// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomSilverAppBAr extends StatelessWidget {
  const CustomSilverAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        floating: false,
        pinned: true,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Image.network(
              'https://iconape.com/wp-content/png_logo_vector/new-youtube-logo.png'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.cast),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
              iconSize: 40,
              icon: const CircleAvatar(
                foregroundImage: NetworkImage(
                    'data:image/png;base64,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'),
                backgroundColor: Colors.transparent,
              ),
              onPressed: () {})
        ]);
  }
}