import 'package:app/ui/views/hymnal/hymnal_buttons.dart';
import 'package:app/ui/widgets/custom/custom_text_form.dart';
import 'package:app/utils/app_colors/app_colors.dart';
import 'package:app/utils/translations/translations_app.dart';
import 'package:flutter/material.dart';

class HymnalKeypad extends StatelessWidget {
  final ValueNotifier<bool> expandedWidget;
  final TextEditingController _hymnalKeypadController = TextEditingController();
  final ValueNotifier<String> _textNotifier = ValueNotifier<String>(""); // Observa o texto do controller
  final List<String> buttons = ['H', 'S', 'C', '1', '2', '3', '4', '5', '6', '7', '8', '9', '✔', '0', '✖'];

  HymnalKeypad({super.key, required this.expandedWidget}) {
    _hymnalKeypadController.addListener(() {
      _textNotifier.value = _hymnalKeypadController.text; // Atualiza o ValueNotifier
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: expandedWidget,
      builder: (context, value, _) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.linearToEaseOut,
        height: value ? 730 : 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Visibility(
              visible: !value,
              child: HymnalButtons(
                text: "Keypad".i18app,
                imageIcon: const ImageIcon(
                  AssetImage('assets/icons/keypad-icon.png'),
                  size: 20,
                ),
                onPressed: () => expandedWidget.value = !value,
              ),
            ),
            Visibility(
              visible: value,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: CustomTextFormField(
                  hintText: "Selecione a categoria",
                  suffixIcon: IconData("⌫".codeUnitAt(0)),
                  controller: _hymnalKeypadController,
                  backspace: true,
                  clear: true,
                ),
              ),
            ),
            Visibility(
              visible: value,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ValueListenableBuilder(
                    valueListenable: _textNotifier,
                    builder: (context, text, _) => GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: buttons.length,
                      itemBuilder: (context, index) {
                        final button = buttons[index];
                        if (button.isEmpty) {
                          return const SizedBox.shrink();
                        }
                        return ElevatedButton(
                          onPressed: _getButtonCallback(button, value),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              button,
                              style: const TextStyle(
                                color: AppColors.primary,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  VoidCallback? _getButtonCallback(String button, bool value) {
    if (button == '✔') {
      return () {};
    }
    if (button == '✖') {
      return () {
        expandedWidget.value = false;
        _hymnalKeypadController.clear();
      };
    }

    if (_hymnalKeypadController.text.length >= 4) {
      return null; // Desativa os botões
    }

    if (_hymnalKeypadController.text.isEmpty) {
      if (button == 'H' || button == 'S' || button == 'C') {
        return () {
          _hymnalKeypadController.text = button;
        };
      } else {
        return null;
      }
    }

    if (_hymnalKeypadController.text.contains(RegExp(r'[HSC]'))) {
      if (button == 'H' || button == 'S' || button == 'C') {
        return () {
          _hymnalKeypadController.text = _hymnalKeypadController.text.replaceFirst(
            RegExp(r'[HSC]'),
            button,
          );
        };
      }

      if (RegExp(r'^\d$').hasMatch(button)) {
        return () {
          _hymnalKeypadController.text += button;
        };
      }
    }
    return null;
  }
}
