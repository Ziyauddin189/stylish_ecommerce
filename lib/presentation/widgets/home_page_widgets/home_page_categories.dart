// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:stylish_ecommerce/core/utils/values.dart';
import 'package:stylish_ecommerce/data/buisness_logic/categories/get_categories_cubit.dart';
import 'package:stylish_ecommerce/data/buisness_logic/categories/get_categories_state.dart';
import 'package:stylish_ecommerce/data/model/caegories/categories_model.dart';
import 'package:stylish_ecommerce/presentation/widgets/home_page_widgets/home_page_category_item_widget.dart';

/// Widget for displaying categories on the home page.
class HomePageCategoriesWidget extends StatelessWidget {
  const HomePageCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCategriesCubit, GetCategoriesState>(
      builder: (context, state) {
        return state.when(
          idle: () {
            return const CircularProgressIndicator();
          },
          loading: () {
            return const CircularProgressIndicator();
          },
          success: (data) {
            CategoriesModel response = data;
            return Column(
              children: [
                Row(
                  children: [
                    Text("All Featured",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 38,
                        width: 80,
                        padding: EdgeInsets.symmetric(horizontal: 10),

                        decoration: BoxDecoration(
                            color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Row(
                          children: [
                            Text("Sort",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 8,),
                            Image.asset('assets/images/sort.png'),
                          ],
                        )),
                    SizedBox(width: 10,),
                    Container(
                        height: 38,
                        width: 80,
                        padding: EdgeInsets.symmetric(horizontal: 6),

                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Row(
                          children: [
                            Text("Filter",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 4,),
                            Image.asset('assets/images/filter.png'),
                          ],
                        )),
                    SizedBox(width: 10,),
                  ],
                ),
                SizedBox(height: 20,),

                Container(
                  height: 120.vertical,
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 16.vertical),
                  decoration: BoxDecoration(
                    color: GlobalAppColors.whiteA70001,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.horizontal),
                      bottomLeft: Radius.circular(20.horizontal),
                    ),
                  ),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: response.data!.data!.length,
                    // padding: EdgeInsets.only(left: 16.vertical),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 16.vertical),
                        child: HomePageCategoryItemWidget(
                          categoryData: response.data!.data![index],
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
          error: (error) {
            return Text(error.toString());
          },
        );
      },
    );
  }
}
