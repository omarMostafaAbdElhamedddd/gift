import 'package:flutter/material.dart';

class CustomTextTile extends StatelessWidget {
  const CustomTextTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
      subtitle: Text(
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
        subtitle,
        style: TextStyle(
          color: Colors.blueGrey.withOpacity( 0.8),
          fontSize: 16,
        ),
      ),
      trailing: Image.network(image),
    );
  }
}
