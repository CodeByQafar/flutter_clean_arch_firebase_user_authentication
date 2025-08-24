import '../navigation/navigation_manager.dart';
import 'package:flutter/material.dart';


mixin NavigatornMixinStateful<T extends StatefulWidget> on State<T>{
 NavigationManager get router =>NavigationManager.instance;
}

mixin NavigatornMixinStateless on StatelessWidget{
   NavigationManager get router => NavigationManager.instance;

}