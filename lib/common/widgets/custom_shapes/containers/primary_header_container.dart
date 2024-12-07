
import 'package:flutter/material.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:shopifyapp/common/widgets/custom_shapes/custom_edges/curved_edges_widget.dart';
import 'package:shopifyapp/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;
  

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        padding: const EdgeInsets.all(0),
        color: TColors.primary,
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                )),
            Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                )),
                child,
          ],
        ),
      ),
    );
  }
}
