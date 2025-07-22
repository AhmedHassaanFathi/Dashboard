import 'package:dashboard/widgets/adaptive_layout_widget.dart';
import 'package:dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => Text('Mobile Layout'),
        tabletLayout: (context) => Text('Tablet Layout'),
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
