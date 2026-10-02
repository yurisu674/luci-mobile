import 'package:flutter/material.dart';
import 'furry_colors.dart';

/// Complete FurAffinity-inspired design system for LuCI Mobile
/// Replaces Material 3 with warm, playful, anthropomorphic aesthetics

class FurrySpacing {
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
  static const double xxl = 48.0;
  static const double xxxl = 64.0;
}

class FurryBorderRadius {
  static const double small = 12.0;
  static const double medium = 20.0;
  static const double large = 28.0;
  static const double extraLarge = 36.0;
  static const BorderRadius smallRadius = BorderRadius.all(Radius.circular(12));
  static const BorderRadius mediumRadius = BorderRadius.all(Radius.circular(20));
  static const BorderRadius largeRadius = BorderRadius.all(Radius.circular(28));
  static const BorderRadius extraLargeRadius = BorderRadius.all(Radius.circular(36));
}

class FurryTextStyles {
  /// Page title / Header - bold, playful
  static TextStyle pageTitle(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
      fontWeight: FontWeight.w900,
      fontSize: 28,
      letterSpacing: 0.5,
      color: Theme.of(context).colorScheme.primary,
    );
  }

  /// Section header - prominent, slightly smaller
  static TextStyle sectionHeader(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge!.copyWith(
      fontWeight: FontWeight.w800,
      fontSize: 18,
      letterSpacing: 0.3,
      color: Theme.of(context).colorScheme.primary,
    );
  }

  /// Card title - prominent within cards
  static TextStyle cardTitle(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium!.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: Theme.of(context).colorScheme.onSurface,
    );
  }

  /// Card subtitle - supporting info
  static TextStyle cardSubtitle(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall!.copyWith(
      color: Theme.of(context).colorScheme.onSurfaceVariant,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.2,
    );
  }

  /// Data value - large, prominent numbers
  static TextStyle dataValue(BuildContext context) {
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
      fontWeight: FontWeight.w800,
      fontSize: 24,
      color: Theme.of(context).colorScheme.primary,
    );
  }

  /// Data label - small text for numbers
  static TextStyle dataLabel(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall!.copyWith(
      color: Theme.of(context).colorScheme.onSurfaceVariant,
      fontSize: 11,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.3,
    );
  }

  /// Button text - bold, clear
  static TextStyle buttonLarge(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge!.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 14,
      letterSpacing: 0.5,
    );
  }

  /// Small label / chip
  static TextStyle chipLabel(BuildContext context) {
    return Theme.of(context).textTheme.labelSmall!.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 11,
      letterSpacing: 0.3,
    );
  }

  /// Status text - for online/offline/error
  static TextStyle statusText(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall!.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 12,
      letterSpacing: 0.2,
    );
  }
}

class FurryAnimations {
  static const Duration instant = Duration(milliseconds: 100);
  static const Duration fast = Duration(milliseconds: 250);
  static const Duration standard = Duration(milliseconds: 400);
  static const Duration slow = Duration(milliseconds: 600);
  static const Duration veryS­low = Duration(milliseconds: 1000);

  // Curves for furry interactions
  static const Curve easeOut = Curves.easeOutCubic;
  static const Curve easeInOut = Curves.easeInOutCubic;
  static const Curve playful = Curves.elasticOut;
  static const Curve soft = Curves.easeOutQuad;
  static const Curve bounce = Curves.elasticInOut;
}

class FuryCardStyles {
  /// Soft card decoration - main card style
  static BoxDecoration softCard(
    BuildContext context, {
    bool isElevated = false,
    bool isSelected = false,
    Color? overrideBackground,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BoxDecoration(
      color: overrideBackground ?? colorScheme.surface,
      borderRadius: FurryBorderRadius.largeRadius,
      border: Border.all(
        color: isSelected
            ? colorScheme.primary.withValues(alpha: 0.4)
            : colorScheme.outlineVariant.withValues(alpha: 0.2),
        width: isSelected ? 2.5 : 1.5,
      ),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          colorScheme.surface,
          colorScheme.surface.withValues(
            alpha: isDark ? 0.85 : 0.95,
          ),
        ],
      ),
      boxShadow: isElevated
          ? [
              BoxShadow(
                color: FurryColors.lightShadow.withValues(
                  alpha: isDark ? 0.3 : 0.1,
                ),
                blurRadius: 16,
                offset: const Offset(0, 4),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: FurryColors.lightPrimary.withValues(
                  alpha: isDark ? 0.15 : 0.05,
                ),
                blurRadius: 8,
                offset: const Offset(0, 2),
                spreadRadius: 0,
              ),
            ]
          : [
              BoxShadow(
                color: FurryColors.lightShadow.withValues(
                  alpha: isDark ? 0.2 : 0.08,
                ),
                blurRadius: 8,
                offset: const Offset(0, 2),
                spreadRadius: 0,
              ),
            ],
    );
  }

  /// Wrapper widget for soft cards with interaction
  static Widget softCardWrapper({
    required BuildContext context,
    required Widget child,
    bool isElevated = false,
    bool isSelected = false,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Color? backgroundColor,
  }) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(vertical: FurrySpacing.sm),
      decoration: FuryCardStyles.softCard(
        context,
        isElevated: isElevated,
        isSelected: isSelected,
        overrideBackground: backgroundColor,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: FurryBorderRadius.largeRadius,
        child: InkWell(
          borderRadius: FurryBorderRadius.largeRadius,
          onTap: onTap,
          onLongPress: onLongPress,
          splashColor: Theme.of(context).colorScheme.primary.withValues(
            alpha: 0.15,
          ),
          highlightColor: Theme.of(context).colorScheme.primary.withValues(
            alpha: 0.1,
          ),
          child: Padding(
            padding: padding ??
                const EdgeInsets.all(FurrySpacing.md),
            child: child,
          ),
        ),
      ),
    );
  }
}

class FurryStatusIndicators {
  /// Cute status dot with paw-like appearance
  static Widget statusDot(
    BuildContext context,
    bool isActive, {
    double size = 12.0,
    bool isPulsing = false,
  }) {
    final color = isActive
        ? Theme.of(context).colorScheme.tertiary
        : Theme.of(context).colorScheme.error;

    if (!isPulsing) {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: 0.4),
              blurRadius: 8,
              spreadRadius: 1,
            ),
          ],
        ),
      );
    }

    // Pulsing version
    return Container(
      width: size + 4,
      height: size + 4,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.3),
            blurRadius: 12,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Center(
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }

  /// Furry status chip - cute badge with rounded design
  static Widget statusChip(
    BuildContext context,
    String label,
    bool isActive, {
    Color? customColor,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final color = customColor ??
        (isActive ? colorScheme.tertiary : colorScheme.error);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: color.withValues(alpha: 0.4),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Text(
        label,
        style: FurryTextStyles.chipLabel(context).copyWith(
          color: color,
        ),
      ),
    );
  }

  /// Inline status indicator text
  static Widget statusText(
    BuildContext context,
    String text,
    bool isActive,
  ) {
    return Text(
      text,
      style: FurryTextStyles.statusText(context).copyWith(
        color: isActive
            ? Theme.of(context).colorScheme.tertiary
            : Theme.of(context).colorScheme.error,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class FurryMetricTile {
  /// Large metric display tile (CPU, Memory, etc)
  static Widget metricTile(
    BuildContext context, {
    required String label,
    required String value,
    required IconData icon,
    Color? accentColor,
    VoidCallback? onTap,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final accent = accentColor ?? colorScheme.primary;

    return FuryCardStyles.softCardWrapper(
      context: context,
      onTap: onTap,
      backgroundColor: accent.withValues(alpha: 0.08),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(FurrySpacing.md),
            decoration: BoxDecoration(
              color: accent.withValues(alpha: 0.15),
              borderRadius: FurryBorderRadius.mediumRadius,
            ),
            child: Icon(
              icon,
              color: accent,
              size: 28,
            ),
          ),
          const SizedBox(height: FurrySpacing.md),
          Text(
            label,
            style: FurryTextStyles.dataLabel(context),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: FurrySpacing.sm),
          Text(
            value,
            style: FurryTextStyles.dataValue(context).copyWith(
              color: accent,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  /// Horizontal metric bar (for throughput, etc)
  static Widget metricBar(
    BuildContext context, {
    required String label,
    required String value,
    required double percentage,
    required Color barColor,
  }) {
    return FuryCardStyles.softCardWrapper(
      context: context,
      padding: const EdgeInsets.all(FurrySpacing.md),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: FurryTextStyles.cardTitle(context),
              ),
              Text(
                value,
                style: FurryTextStyles.dataValue(context).copyWith(
                  fontSize: 16,
                  color: barColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: FurrySpacing.md),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: percentage.clamp(0, 1),
              minHeight: 10,
              backgroundColor: barColor.withValues(alpha: 0.15),
              valueColor: AlwaysStoppedAnimation(barColor),
            ),
          ),
        ],
      ),
    );
  }
}

class FurryButton {
  /// Large primary button with gradient and soft shadows
  static Widget primaryButton(
    BuildContext context, {
    required String label,
    required VoidCallback onPressed,
    bool isLoading = false,
    double height = 56,
    bool isFullWidth = true,
  }) {
    return SizedBox(
      height: height,
      width: isFullWidth ? double.infinity : null,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isLoading ? null : onPressed,
          borderRadius: FurryBorderRadius.mediumRadius,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: FurryColors.plushGradient,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: FurryBorderRadius.mediumRadius,
              boxShadow: [
                BoxShadow(
                  color: FurryColors.lightPrimary.withValues(alpha: 0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Center(
              child: isLoading
                  ? SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.5,
                        valueColor: AlwaysStoppedAnimation(
                          Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    )
                  : Text(
                      label,
                      style: FurryTextStyles.buttonLarge(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }

  /// Secondary outline button
  static Widget secondaryButton(
    BuildContext context, {
    required String label,
    required VoidCallback onPressed,
    bool isLoading = false,
    double height = 56,
    bool isFullWidth = true,
  }) {
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      height: height,
      width: isFullWidth ? double.infinity : null,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isLoading ? null : onPressed,
          borderRadius: FurryBorderRadius.mediumRadius,
          child: Container(
            decoration: BoxDecoration(
              color: colorScheme.secondary.withValues(alpha: 0.15),
              borderRadius: FurryBorderRadius.mediumRadius,
              border: Border.all(
                color: colorScheme.secondary.withValues(alpha: 0.3),
                width: 2,
              ),
              boxShadow: [
                BoxShadow(
                  color: colorScheme.secondary.withValues(alpha: 0.15),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: isLoading
                  ? SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.5,
                        valueColor: AlwaysStoppedAnimation(
                          colorScheme.secondary,
                        ),
                      ),
                    )
                  : Text(
                      label,
                      style: FurryTextStyles.buttonLarge(context).copyWith(
                        color: colorScheme.secondary,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
