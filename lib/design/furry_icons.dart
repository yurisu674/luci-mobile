import 'package:flutter/material.dart';

/// FurAffinity-style anthropomorphic icons and decorations
/// Replaces generic Material icons with furry-themed alternatives

class FurryIcons {
  // Device status icons (with paw/anthropomorphic feel)
  static const IconData routerOnline = Icons.pets; // Paw for online/active
  static const IconData routerOffline = Icons.sick; // Indicates offline
  static const IconData routerActive = Icons.favorite; // Heart for loved/active
  static const IconData routerError = Icons.warning_amber; // Alert

  // Network related (with furry names)
  static const IconData wifi = Icons.wifi;
  static const IconData wifiOff = Icons.wifi_off;
  static const IconData ethernet = Icons.lan_connect;
  static const IconData mobile = Icons.phone_android;
  static const IconData location = Icons.location_on; // Fur color/location

  // Status indicators
  static const IconData active = Icons.star; // Star for active/featured
  static const IconData inactive = Icons.star_outline;
  static const IconData sleeping = Icons.bedtime; // Sleeping mode
  static const IconData alert = Icons.report; // Alert/watch status

  // System monitoring (with character feel)
  static const IconData cpu = Icons.memory; // Brain/CPU
  static const IconData memory = Icons.storage; // Storage/belly
  static const IconData temperature = Icons.thermostat; // Temp
  static const IconData speed = Icons.speed; // Speed/running
  static const IconData power = Icons.power_settings_new;
  static const IconData settings = Icons.tune;

  // Network management
  static const IconData addDevice = Icons.add_location; // Add to collection
  static const IconData removeDevice = Icons.close_fullscreen; // Remove
  static const IconData editDevice = Icons.edit;
  static const IconData shareDevice = Icons.favorite_border; // Share/favorite
  static const IconData listDevices = Icons.list;

  // Actions
  static const IconData restart = Icons.refresh_rounded;
  static const IconData configure = Icons.palette;
  static const IconData backup = Icons.backup;
  static const IconData restore = Icons.restore;
  static const IconData delete = Icons.delete_sweep;

  // Interactive (playful)
  static const IconData paw = Icons.pets; // Generic paw
  static const IconData heart = Icons.favorite;
  static const IconData star = Icons.star;
  static const IconData fire = Icons.local_fire_department; // Hot/trending
  static const IconData sparkles = Icons.diamond;
}

/// Utility to render furry-styled icons with decorations
class FurryIconWidget extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color? color;
  final bool isActive;
  final bool withGlow;

  const FurryIconWidget({
    required this.icon,
    this.size = 24,
    this.color,
    this.isActive = true,
    this.withGlow = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final iconColor = color ??
        (isActive ? colorScheme.primary : colorScheme.onSurfaceVariant);

    if (!withGlow) {
      return Icon(
        icon,
        size: size,
        color: iconColor,
      );
    }

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: iconColor.withValues(alpha: 0.3),
            blurRadius: 12,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Icon(
        icon,
        size: size,
        color: iconColor,
      ),
    );
  }
}
