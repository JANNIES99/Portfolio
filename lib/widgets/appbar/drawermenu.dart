// import 'package:flutter/material.dart';
// import 'package:portfolio/extenstion.dart';
// import 'package:portfolio/widgets/appbar/myappbar.dart';

// class DrawerMenu extends StatefulWidget {
//   const DrawerMenu({super.key});

//   @override
//   State<DrawerMenu> createState() => _DrawerMenuState();
// }

// class _DrawerMenuState extends State<DrawerMenu>
//     with SingleTickerProviderStateMixin {
//   bool menuIsOpen = true;
//   late final AnimationController _controller = AnimationController(
//     duration: Duration(milliseconds: 200),
//     vsync: this,
//   );
//   late final _animation = Tween<Offset>(
//     begin: Offset(0, -1),
//     end: Offset.zero,
//   ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   void toggleSmallMenu() {
//     if (menuIsOpen) {
//       _controller.forward();
//     } else {
//       _controller.reverse();
//     }
//     menuIsOpen = !menuIsOpen;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SlideTransition(
//       position: _animation,
//       child: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           color: context.theme.colorScheme.surface,
//           boxShadow: [
//             BoxShadow(
//               color: context.theme.colorScheme.surface.withValues(alpha: 0.4),
//               blurRadius: 6,
//               spreadRadius: 3,
//             ),
//           ],
//         ),
//         child: const SmallMenu(),
//       ),
//     );
//   }
// }
