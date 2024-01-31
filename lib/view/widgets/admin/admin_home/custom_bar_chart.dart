import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_app/core/constants/app_colors.dart';
import 'package:medical_app/view/widgets/admin/admin_home/custom_bottom_title_bar_chart.dart';
import 'package:medical_app/view/widgets/admin/admin_home/custom_left_title_bar_chart.dart';

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> barChartGroupList = [0, 1, 2, 3, 4, 5, 6];

    return SizedBox(
      height: Get.height * 0.205,
      width: Get.width * 0.545,
      child: BarChart(
        BarChartData(
          borderData: FlBorderData(show: false),
          gridData: FlGridData(
            show: false,
          ),
          alignment: BarChartAlignment.spaceAround,
          maxY: 40.h,
          minY: 0.h,
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 10,
                getTitlesWidget: getLeftTitle,
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: getBottomTitle,
              ),
            ),
          ),
          barGroups:
              barChartGroupList.map((e) => getBarChartGroupData(x: e)).toList(),
        ),
      ),
    );
  }

  Widget getLeftTitle(value, meta) {
    switch (value.toInt()) {
      case 0:
        return const CustomLiftTitleBarChart(
          title: '0',
        );
      case 10:
        return const CustomLiftTitleBarChart(
          title: '10',
        );
      case 20:
        return const CustomLiftTitleBarChart(
          title: '20',
        );
      case 30:
        return const CustomLiftTitleBarChart(
          title: '30',
        );

      default:
        return const Text(
          '',
        );
    }
  }

  Widget getBottomTitle(value, meta) {
    switch (value.toInt()) {
      case 0:
        return const CustomBottomTitleChartText(
          text: 'S',
        );
      case 1:
        return const CustomBottomTitleChartText(text: 'M');
      case 2:
        return const CustomBottomTitleChartText(text: 'T');
      case 3:
        return const CustomBottomTitleChartText(text: 'W');
      case 4:
        return const CustomBottomTitleChartText(text: 'T');
      case 5:
        return const CustomBottomTitleChartText(text: 'F');
      case 6:
        return const CustomBottomTitleChartText(text: 'S');
      default:
        return Text('', style: TextStyle(color: AppColors.whiteColor));
    }
  }

  BarChartGroupData getBarChartGroupData({required int x}) {
    return BarChartGroupData(
    
      x: x,
      barsSpace: 3.w,
      barRods: [
        BarChartRodData(

            toY: 20.h,
            width: 3.w,
            borderRadius: BorderRadius.circular(9.2.r),
            color: AppColors.accentColor),
        BarChartRodData(
            width: 3.w,
            borderRadius: BorderRadius.circular(9.2.r),
            toY: 30.h,
            color: AppColors.whiteColor)
      ],
    );
  }
}
