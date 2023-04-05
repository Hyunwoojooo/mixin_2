import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:mixin_2/const/colors.dart';

class MakeCategoryScreen extends StatefulWidget {
  const MakeCategoryScreen({Key? key}) : super(key: key);

  @override
  State<MakeCategoryScreen> createState() => _MakeCategoryScreenState();
}

class _MakeCategoryScreenState extends State<MakeCategoryScreen> {

  List<String> options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
    'Option 6',
    'Option 7',
    'Option 8',
    'Option 9',
    'Option 10',
    'Option 11',
    'Option 12',
    'Option 13',
    'Option 14',
  ];
  List<String> selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        leading: GestureDetector(
          child: Image.asset('assets/images/back_icon.png'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 29.0,
                ),
                Container(
                  color: Colors.transparent,
                  child: const Text(
                    '요즘 관심가는 주제가\n무엇인가요?',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SUIT',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: 201,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Color(0xFFF2F3F7),
                  ),
                  child: Center(
                    child: Text(
                      '최소 3가지 이상 선택해주세요.',
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        color: Color(0xFF51B49F),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 54,
                ),
                ChipsChoice<String>.multiple(
                    value: selectedOptions,
                    onChanged: (val) => setState(() {
                      selectedOptions = val;
                    }),
                  choiceItems: C2Choice.listFrom<String, String>(
                      source: options,
                      value: (i, v) => v,
                      label: (i, v) => v,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
