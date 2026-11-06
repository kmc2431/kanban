import 'package:flutter/material.dart';
import 'view.dart';
import 'view_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final vm = KanbanViewModel();
  await vm.load();

runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF111820),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFFFF986B),
        brightness: Brightness.dark,
      ),
    ),
    home: KanbanView(vm),
  ),
);

}
