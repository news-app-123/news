import 'package:flutter/material.dart';
import 'package:newsapp/pages/detailspage.dart';

class NewsTile extends StatelessWidget {
  final String title;
  final String image;
  final String content;
  final void Function()? onTap; 

  const NewsTile({
    required this.title,
    required this.image,
    required this.content,
    this.onTap, 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              title: title,
              image: image,
              content: content,
            ),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height, 
        child: Stack(
          children: [
            // News image
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.zero, 
                child: Image(
                  image: image.startsWith('http')
                      ? NetworkImage(image)
                      : AssetImage(image) as ImageProvider,
                  fit: BoxFit.cover, 
                ),
              ),
            ),
            // Overlay title
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
