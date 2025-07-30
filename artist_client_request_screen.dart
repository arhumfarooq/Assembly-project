import 'package:flutter/material.dart';
import 'package:guestly/components/customappbar2.dart';
import 'package:guestly/components/main_text.dart';
import 'package:guestly/components/schedule_artist_container1.dart';
import 'package:guestly/components/viewdetail_date_container.dart';
import 'package:guestly/components/viewdetail_useable_container.dart';
import 'package:guestly/constants/app_images.dart';
import 'package:guestly/constants/appcolors.dart';
import 'package:image_stack/image_stack.dart';

class ArtistClientRequestScreen extends StatelessWidget {
  const ArtistClientRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Fixed: Added proper type declaration
    final List<String> images = [
      AppImages.man3,
      AppImages.girl1,
    ];

    // Fixed: Added consistent spacing constant
    const double verticalSpacing = 12.0;
    const double horizontalPadding = 26.0;

    return Scaffold(
      appBar: Customappbar2(
        text: 'View Request',
        svg: AppImages.importantmessage,
        ishow: true,
        isContainerColor: true,
      ),
      backgroundColor: AppColors.screenColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 30),
            ScheduleArtistContainer1(
              image: AppImages.man3,
              name: 'Marcus Bennett',
            ),
            const SizedBox(height: verticalSpacing),
            Row(
              children: [
                Expanded(
                  child: DetailViewDateContainer(
                    text: 'Requested Start Date',
                    text2: 'March 2023',
                    textcolor: AppColors.grey,
                    height: 72,
                  ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: DetailViewDateContainer(
                    text: 'Requested End Date',
                    text2: 'May 2023',
                    textcolor: AppColors.grey,
                    height: 72,
                  ),
                ),
              ],
            ),
            const SizedBox(height: verticalSpacing),
            ViewDetailUseAbleContainer(
              text1: 'Status',
              textcolor1: AppColors.textColor,
              text2: 'Accepted',
              textcolor: AppColors.green,
            ),
            const SizedBox(height: verticalSpacing),
            ViewDetailUseAbleContainer(
              text1: 'Tattoo Placement',
              textcolor1: AppColors.textColor,
              text2: 'Right Forearm',
              textcolor: AppColors.primaryColor,
            ),
            const SizedBox(height: verticalSpacing),
            ViewDetailUseAbleContainer(
              text1: 'Tattoo Size',
              textcolor1: AppColors.textColor,
              text2: 'Medium',
              textcolor: AppColors.primaryColor,
            ),
            const SizedBox(height: verticalSpacing),
            ViewDetailUseAbleContainer(
              text1: 'Style Tags',
              textcolor1: AppColors.textColor,
              text2: 'Traditional',
              textcolor: AppColors.primaryColor,
            ),
            const SizedBox(height: verticalSpacing),
            ViewDetailUseAbleContainer(
              text1: 'Color Preference',
              textcolor1: AppColors.textColor,
              text2: 'Black & Gray',
              textcolor: AppColors.primaryColor,
            ),
            const SizedBox(height: verticalSpacing),
            DetailViewDateContainer(
              text: 'Brief Description',
              text2: 'A small rose on the wrist with fine line style',
              textcolor: AppColors.textColor,
              height: 72,
            ),
            const SizedBox(height: verticalSpacing),
            // Fixed: Added proper padding and improved ImageStack usage
            Container(
              width: double.infinity,
              height: 74,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: AppColors.selectContainerColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.primaryColor, width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Maintext(
                    text: "Reference Photos",
                    fontsize: 18,
                    color: AppColors.textColor,
                  ),
                  Container(
                    height: 46,
                    width: 37,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.refrencePhoto, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: images.isNotEmpty
                        ? ImageStack(
                            imageList: images,
                            totalCount: images.length,
                            imageCount: images.length > 3 ? 3 : images.length, // Show max 3 images
                          )
                        : const Icon(Icons.photo, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}