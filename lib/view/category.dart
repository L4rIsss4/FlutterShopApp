import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:shopApp/components/product_card.dart';
import 'package:shopApp/constant/constant.dart';
import 'package:shopApp/model/category_product_model.dart';
import 'package:shopApp/riverpod/category_riverpod.dart';


final categoryRiverpod = ChangeNotifierProvider((ref) => CategoryRiverpod());

class Category extends ConsumerStatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WishlistState();
}

class _WishlistState extends ConsumerState<Category> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var watch = ref.watch(categoryRiverpod);
    // ignore: unused_local_variable
    var read = ref.read(categoryRiverpod);
    return Scaffold(
      body: ListView(
        children: [
          // categoriProductCategories(CategoryProductModel(kategoriTitle: kategori1, products: )),
          categoriProductCategories(x),
          categoriProductCategories(ax),
          categoriProductCategories(bx),
          categoriProductCategories(cx),
        ],
      ),
    );
  }
}

Widget categoriProductCategories(CategoryProductModel model) {
  return Column(
    children: [
      Padding(
        padding: [20, 25, 20, 15].paddingLTRB,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              model.kategoriTitle,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
            const Text(
              "See All",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: Color(0xffA6A6AA),
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 270,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
            width: 20,
          ),
          itemCount: model.products.length,
          padding: [20, 10, 20, 10].paddingLTRB,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ProductCard(product: model.products[index]);
          },
        ),
      ),
    ],
  );
}

SizedBox space() => const SizedBox(
      height: 20,
    );

SizedBox campaigns(CategoryRiverpod read, CategoryRiverpod watch) {
  return SizedBox(
    height: 210,
    child: Stack(
      children: [
        campaignsPageView(read, watch),
        campaignsDot(read, watch),
      ],
    ),
  );
}

Align campaignsDot(CategoryRiverpod read, CategoryRiverpod watch) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: 12.onlyBottomP,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < read.campaigns.length; i++)
            Container(
              width: 8,
              height: 8,
              margin: 3.allP,
              decoration: BoxDecoration(
                color: watch.campaignsCurrentIndex == i
                    ? Constant.white
                    : Constant.gray,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    ),
  );
}

PageView campaignsPageView(CategoryRiverpod read, CategoryRiverpod watch) {
  return PageView.builder(
    controller: read.pageController,
    itemCount: read.campaigns.length,
    itemBuilder: (context, index) => Image.asset(
      watch.campaigns[index],
    ),
    onPageChanged: (newPageValue) => read.setCampaignsIndex(newPageValue),
  );
}
