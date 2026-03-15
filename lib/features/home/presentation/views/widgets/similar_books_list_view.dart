import 'package:bookly_app/features/home/presentation/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: FeaturedItem(
              imageUrl:
                  'https://www.google.com/search?q=bloody+homelander&sca_esv=28e85dfee2211497&udm=2&biw=852&bih=811&sxsrf=ANbL-n4XRLZVny0s-EEyl9AuGDrrnxwFPw%3A1773578810466&ei=Oqq2ad6AHLCF9u8PjOmpoQ4&ved=0ahUKEwjeher396GTAxWwgv0HHYx0KuQQ4dUDCBI&uact=5&oq=bloody+homelander&gs_lp=Egtnd3Mtd2l6LWltZyIRYmxvb2R5IGhvbWVsYW5kZXIyBRAAGIAEMgQQABgeMgQQABgeMgQQABgeMgQQABgeMgQQABgeMgQQABgeMgQQABgeMgQQABgeMgQQABgeSNIgUKIIWNIfcAF4AJABAJgBeKABnA-qAQQwLjE3uAEDyAEA-AEBmAISoALWD8ICCBAAGAcYChgewgIGEAAYBxgewgIMEAAYgAQYsQMYChgLwgIPEAAYgAQYsQMYgwEYChgLwgIJEAAYgAQYChgLwgIHECMYJxjJAsICChAAGIAEGEMYigXCAggQABiABBixA8ICCxAAGIAEGLEDGIMBwgIGEAAYChgemAMA4gMFEgExIECIBgGSBwQxLjE3oAfoMrIHBDAuMTe4B9UPwgcGMC4xNS4zyAcpgAgA&sclient=gws-wiz-img#sv=CAMSXhoyKhBlLV9KNkFEOVQ0dkxBVjJNMg5fSjZBRDlUNHZMQVYyTToOVFdSZWRrd2RtSF9HY00gBCokCg5TdjZQYnE3UFIyY3RPTRIQZS1fSjZBRDlUNHZMQVYyTRgAMAEYByDr6Zc9MAJKCBACGAIgAigC',
            ),
          );
        },
      ),
    );
  }
}
