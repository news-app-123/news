import 'package:flutter/material.dart';
import 'package:newsapp/pages/newstile.dart';

class NewsPage extends StatelessWidget {
  final String category;

  const NewsPage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Intellicast',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: NewsPageView(category: category),
    );
  }
}

class NewsPageView extends StatelessWidget {
  final String category;

  NewsPageView({required this.category});

  final Map<String, List<Map<String, String>>> newsArticlesByCategory = {
    'Technology': [
      {
        'title': 'Tech News 1: Flutter 3 Released!',
        'image': 'https://via.placeholder.com/400x200',
        'content':'shbashefgrbngmekjdufrgbvnjrfndjdbhefbh',
      },
      {
        'title': 'Tech News 2: AI is Revolutionizing Industries',
        'image': 'https://via.placeholder.com/400x200',
        'content':'shbashefgrbngmekjdufrgbvnjrfndjdbhefbh',
      },
    ],
    'Science': [
      {
        'title': 'NASA Discovers New Planet. The new planets are called K2-293b and K2-294b.',
        'image': 'assets/maf_20220830_ksc_artemis1_epb_005_large.webp',
        'content':'shbashefgrbngmekjdufrgbvnjrfndjdbhefbh',
      },
      {
        'title': 'Science News 2: New Medical Breakthrough',
        'image': 'https://via.placeholder.com/400x200',
        'content':'shbashefgrbngmekjdufrgbvnjrfndjdbhefbh',
      },
    ],
    'Health': [
      {
        'title': 'Health News 1: Benefits of a Balanced Diet',
        'image': 'https://via.placeholder.com/400x200',
        'content':'shbashefgrbngmekjdufrgbvnjrfndjdbhefbh',
      },
      {
        'title': 'Health News 2: How to Stay Active in Winter',
        'image': 'https://via.placeholder.com/400x200',
        'content':'shbashefgrbngmekjdufrgbvnjrfndjdbhefbh',
      },
    ],
    'Sports': [
      {
        'title': 'Sports News 1: Football World Cup Highlights',
        'image': 'https://via.placeholder.com/400x200',
        'content':'shbashefgrbngmekjdufrgbvnjrfndjdbhefbh',
      },
      {
        'title': 'Sports News 2: Olympic Games Preview',
        'image': 'https://via.placeholder.com/400x200',
        'content':'shbashefgrbngmekjdufrgbvnjrfndjdbhefbh',
      },
    ],
    'Business': [
      {
        'title': 'Business News 1: Stock Market Hits Record High',
        'image': 'https://via.placeholder.com/400x200',
        'content':'shbashefgrbngmekjdufrgbvnjrfndjdbhefbh',
      },
      {
        'title': 'Business News 2: Economic Growth in 2023',
        'image': 'https://via.placeholder.com/400x200',
        'content':'shbashefgrbngmekjdufrgbvnjrfndjdbhefbh',
      },
    ],
    'International': [
      {
        'title': 'Kate Middleton to Return to Royal Duties and attend Wimbledon',
        'image': 'assets/kate-middleton-2-cw-240612-571e8f.webp',
        'content':'LONDON — Kate, the Princess of Wales, attended the men’s final at Wimbledon on Sunday, in a rare public appearance since she announced her cancer diagnosis earlier this year.A big tennis fan, Kate, 42, has been a fixture in the Royal Box for many years, often attending with her husband, Prince William, and other members of the royal family. This year, she was joined by her daughter Charlotte, 9, and sister, Pippa Middleton Matthews, 40.Wearing a long purple dress, Kate smiled and waved at the crowds as she made her way to Wimbledon’s Centre Court, where she was greeted by a standing ovation ahead of the Grand Slam final between Novak Djokovic and Carlos Alcaraz.Kate’s public appearances have been limited since she revealed she was undergoing treatment for cancer earlier this year. William, 42, and their children George, 10, Charlotte and Louis, 5, have also largely been out of the public eye in recent months.Last month, however, Kate attended the Trooping the Colour event in London, an annual military ceremony that celebrates the official birthday of King Charles III.Princess Kate makes first public appearance post-cancer diagnosisAhead of her appearance, she shared an update on her cancer treatment, saying in a written message that she was “not out of the woods yet” and that she had “good days and bad days.” She said she was “making good progress” but that her treatment would continue for a few more months.Kate’s health had become the subject of widespread speculation and baseless conspiracy theories after the palace said she would be taking a step back from public duties following planned abdominal surgery in January.',
      },
      {
        'title': 'Business News 2: Olympics',
        'image': 'https://via.placeholder.com/400x200',
        'content':'shbashefgrbngmekjdufrgbvnjrfndjdbhefbh',
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> newsArticles = newsArticlesByCategory[category] ?? [];

    PageController pageController = PageController(
      viewportFraction: 1.0,
    );

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Expanded(
            child: Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: newsArticles.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: NewsTile(
                        title: newsArticles[index]['title']!,
                        image: newsArticles[index]['image']!,
                        content:newsArticles[index]['content']!,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
