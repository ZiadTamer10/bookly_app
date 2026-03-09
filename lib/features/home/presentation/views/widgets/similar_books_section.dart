import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSections extends StatelessWidget {
  const SimilarBooksSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentGeometry.centerLeft,
          child: Text(
            'You can also like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 16),
        SimilarBooksListView(),
      ],
    );
  }
}
