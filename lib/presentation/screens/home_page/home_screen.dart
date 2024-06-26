
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/helper/localization_extension.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/presentation/common_widget/custom_search_view.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_appbar.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_banners.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_categories.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_deal_of_the_day.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_featured_products.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_new_arrivals.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_special_offers.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_special_product.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_sponsered_banner.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_trending_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalAppColors.gray100,
        resizeToAvoidBottomInset: true,
        appBar: homePageAppbar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              top: 24.vertical,
            ),
            child: Container(
              margin: EdgeInsets.only(
                left: 16.horizontal,
                bottom: 18.vertical,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 16.vertical),
                    child: CustomSearchView(
                      hintText: "msg_search_any_product".tr,
                      borderDecoration: SearchViewStyleHelper.outlineBlack,
                      filled: true,
                      fillColor: GlobalAppColors.whiteA70001,
                    ),
                  ),
                  SizedBox(
                    height: 16.vertical,
                  ),
                  const HomePageCategoriesWidget(),
                  SizedBox(
                    height: 16.vertical,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16.horizontal),
                    child: const HomePageBanners(),
                  ),
                  SizedBox(
                    height: 16.vertical,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16.horizontal,
                    ),
                    child: const HomePageDealOftheDay(),
                  ),
                  SizedBox(
                    height: 16.vertical,
                  ),
                  const HomePageFeaturedproducts(),
                  SizedBox(
                    height: 16.vertical,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16.horizontal,
                    ),
                    child: const HomePageSpecialProduct(),
                  ),
                  SizedBox(
                    height: 16.vertical,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16.horizontal,
                    ),
                    child: const HomePageSpecialOffers(),
                  ),
                  SizedBox(
                    height: 16.vertical,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16.horizontal,
                    ),
                    child: const HomePageTrendingPrducts(),
                  ),
                  SizedBox(
                    height: 16.vertical,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 16.horizontal,
                    ),
                    child: const HomePageNewArrival(),
                  ),
                  SizedBox(
                    height: 16.vertical,
                  ),
                  const HomePageSposeredBanner(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
