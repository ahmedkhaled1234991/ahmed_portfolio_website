import 'package:flutter/material.dart';

import '../../../values/values.dart';
import '../../../widgets/widgets.dart';
import 'widget.dart';

class FooterWeb extends StatelessWidget {
  const FooterWeb({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ContentArea(
      width: width,
      height: height,
      backgroundColor: AppColors.black400,
      borderRadius: const BorderRadius.all(
        Radius.circular(Sizes.RADIUS_8),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(Sizes.RADIUS_8),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -(height * 0.15),
              left: -(height * 0.15),
              child: Image.asset(
                ImagePath.kBoxCoverGold,
                height: height * 0.5,
                color: AppColors.primaryColor,
              ),
            ),
            Positioned(
              top: -(height * 0.15),
              right: -(height * 0.1),
              // bottom: -25,
              child: Image.asset(
                ImagePath.kBoxCoverBlack,
                height: height * 1.25,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                const Spacer(flex: 2),
                Text(
                  Strings.LETS_TALK,
                  style:
                      textTheme.displaySmall?.copyWith(color: AppColors.white),
                ),
                const Spacer(),
                FooterItemContent(
                  data: Data.footerItems,
                  isHorizontal: true,
                ),
                const Spacer(),
                const PortfolioLinkButton(
                  url: Strings.EMAIL_URL,
                  buttonTitle: Strings.HIRE_ME,
                  buttonColor: AppColors.primaryColor,
                ),
                const Spacer(flex: 2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
