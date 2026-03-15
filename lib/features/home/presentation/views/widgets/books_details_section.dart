import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: FeaturedItem(
            imageUrl:
                'https://www.google.com/search?q=bloody+homelander&sca_esv=28e85dfee2211497&udm=2&biw=852&bih=811&sxsrf=ANbL-n4XRLZVny0s-EEyl9AuGDrrnxwFPw%3A1773578810466&ei=Oqq2ad6AHLCF9u8PjOmpoQ4&ved=0ahUKEwjeher396GTAxWwgv0HHYx0KuQQ4dUDCBI&uact=5&oq=bloody+homelander&gs_lp=Egtnd3Mtd2l6LWltZyIRYmxvb2R5IGhvbWVsYW5kZXIyBRAAGIAEMgQQABgeMgQQABgeMgQQABgeMgQQABgeMgQQABgeMgQQABgeMgQQABgeMgQQABgeMgQQABgeSNIgUKIIWNIfcAF4AJABAJgBeKABnA-qAQQwLjE3uAEDyAEA-AEBmAISoALWD8ICCBAAGAcYChgewgIGEAAYBxgewgIMEAAYgAQYsQMYChgLwgIPEAAYgAQYsQMYgwEYChgLwgIJEAAYgAQYChgLwgIHECMYJxjJAsICChAAGIAEGEMYigXCAggQABiABBixA8ICCxAAGIAEGLEDGIMBwgIGEAAYChgemAMA4gMFEgExIECIBgGSBwQxLjE3oAfoMrIHBDAuMTe4B9UPwgcGMC4xNS4zyAcpgAgA&sclient=gws-wiz-img#sv=CAMSXhoyKhBlLV9KNkFEOVQ0dkxBVjJNMg5fSjZBRDlUNHZMQVYyTToOVFdSZWRrd2RtSF9HY00gBCokCg5TdjZQYnE3UFIyY3RPTRIQZS1fSjZBRDlUNHZMQVYyTRgAMAEYByDr6Zc9MAJKCBACGAIgAigC',
          ),
        ),
        SizedBox(height: 40),
        Text('The Jungle Book', style: Styles.textStyle30),
        SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(height: 16),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 37),
        BooksAction(),
      ],
    );
  }
}
