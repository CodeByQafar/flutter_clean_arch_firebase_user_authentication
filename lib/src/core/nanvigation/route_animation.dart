part of 'navigation_manager.dart';

class FadeRoute<T> extends PageRouteBuilder<T> {
  final Widget child;

  FadeRoute({required this.child})
    : super(
        pageBuilder: (context, animation, secondaryAnimation) => child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation, // Use the animation for opacity
            child: child,
          );
        },
      );
}
