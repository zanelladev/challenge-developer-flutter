import 'package:design_system/design_system.dart';
import 'package:design_system/src/common/colors/cesla_color_scheme.dart';
import 'package:flutter/material.dart';

class CeslaErrorToast {
  static void show(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        content: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.error,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            message,
            style: Theme.of(context)
                .extension<CeslaTextStylesExtension>()!
                .caption
                .copyWith(color: CeslaThemeColors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}