import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/generated/app_icons.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/custom_svg_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowBottomSheet {
  /// Shows a custom draggable modal bottom sheet.
  static Future<T?> draggableSheet<T>({
    required BuildContext context,
    required Widget Function(
      BuildContext,
      ScrollController,
      DraggableScrollableController,
    ) builder,

    /// Whether to show the default drag handle or not.
    bool showDragHandle = true,

    /// Optionally provide a custom widget to be used as the drag handle.
    Widget? customHandle,

    /// Initial visible size of the draggable sheet (0.0 to 1.0).
    double initialSize = 0.5,

    /// Padding below the handle (ignored if customHandle is used).
    double handleBottomPadding = 24.0,

    /// Background color of the bottom sheet container.
    Color? backgroundColor,

    /// Color of the barrier behind the bottom sheet.
    Color? barrierColor,

    /// Radius of the container border.
    BorderRadius? borderRadius,

    /// Margin around the bottom sheet container.
    EdgeInsets margin = const EdgeInsets.all(0.0),
  }) async {
    final colorScheme = Theme.of(context).colorScheme;
    final draggableScrollController = DraggableScrollableController();

    // return showModalBottomSheet<T>(
    //   context: context,
    //   isScrollControlled: true,
    //   useSafeArea: true,
    //   backgroundColor: Colors.transparent,
    //   barrierColor: barrierColor ?? Colors.black26,
    //   builder: (context) {
    //     return Container(
    //       margin: margin,
    //       decoration: BoxDecoration(
    //         color: backgroundColor ?? Colors.white,
    //         borderRadius: borderRadius ?? BorderRadius.circular(20.0),
    //       ),
    //       child: DraggableScrollableSheet(
    //         controller: draggableScrollController,
    //         initialChildSize: initialSize,
    //         expand: false,
    //         builder: (context, scrollController) {
    //           return Column(
    //             mainAxisSize: MainAxisSize.min,
    //             children: [
    //               if (customHandle != null)
    //                 customHandle
    //               else if (showDragHandle)
    //                 Container(
    //                   height: 20.h,
    //                   width: double.infinity,
    //                   alignment: Alignment.center,
    //                   decoration: BoxDecoration(
    //                     color: Colors.black.withOpacity(0.3),
    //                     borderRadius: const BorderRadius.only(
    //                       topLeft: Radius.circular(20),
    //                       topRight: Radius.circular(20),
    //                     ),
    //                   ),
    //                   child: CustomSvgIcon(
    //                     AppIcons.kBottomSheetHandle,
    //                     width: 30.w,
    //                     color: const Color(0xff885B2B),
    //                   ),
    //                 ),
    //               Expanded(
    //                 child: Container(
    //                   padding: topPadding12,
    //                   decoration: BoxDecoration(
    //                     color: Colors.red.withOpacity(0.3),
    //                     borderRadius: const BorderRadius.only(
    //                       topLeft: Radius.circular(20),
    //                       topRight: Radius.circular(20),
    //                     ),
    //                   ),
    //                   child: builder(
    //                     context,
    //                     scrollController,
    //                     draggableScrollController,
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           );
    //         },
    //       ),
    //     );
    //   },
    // );

    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      barrierColor: barrierColor ?? Colors.black26,
      builder: (context) {
        return Container(
          margin: margin,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: borderRadius ?? BorderRadius.circular(20.0),
          ),
          child: DraggableScrollableSheet(
            controller: draggableScrollController,
            initialChildSize: initialSize,
            expand: false,
            builder: (context, scrollController) {
              return Stack(
                children: [
                  // Handle stacked on top
                  if (customHandle != null)
                    customHandle
                  else if (showDragHandle)
                    Container(
                      height: 50.h,
                      width: double.infinity,
                      padding: topPadding8,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: CustomSvgIcon(
                        AppIcons.kBottomSheetHandle,
                        width: 30.w,
                        color: const Color(0xff885B2B),
                      ),
                    ),
                  Container(
                    margin: topPadding24,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    padding: topPadding12,
                    child: builder(
                      context,
                      scrollController,
                      draggableScrollController,
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
