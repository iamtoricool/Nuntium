import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class ArticlePageScreen extends StatefulWidget {
  const ArticlePageScreen({super.key});

  @override
  State<ArticlePageScreen> createState() => _ArticlePageScreenState();
}

class _ArticlePageScreenState extends State<ArticlePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('assets/images/newyork.jpg'))),
              child: Padding(
                padding: const EdgeInsets.only(top: 72, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ).onTap(() => Navigator.pop(context)),
                    Column(
                      children: [
                        Icon(
                          Icons.bookmark_outline,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Icon(
                          Icons.share_outlined,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12))),
            ),
          ),
        ],
      ),
    );
  }
}
