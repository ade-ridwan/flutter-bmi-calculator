import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/components/reusable_card.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 180;
  double weight = 60;
  int age = 20;
  Gender? selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.black,
                      cardChild: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Age",
                                  style: kLabelTextStyle,
                                ),
                                Text(
                                  "$age",
                                  style: kNumberTextStyle,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    IconButton.filled(
                                      padding: EdgeInsets.zero,
                                      constraints: BoxConstraints.tight(
                                          const Size.square(24)),
                                      onPressed: () {
                                        setState(() {
                                          age += 1;
                                        });
                                      },
                                      iconSize: 16,
                                      icon: const Icon(
                                        Icons.add,
                                      ),
                                    ),
                                    IconButton.filled(
                                      padding: EdgeInsets.zero,
                                      constraints: BoxConstraints.tight(
                                          const Size.square(24)),
                                      onPressed: () {
                                        setState(() {
                                          age -= 1;
                                        });
                                      },
                                      iconSize: 16,
                                      icon: const Icon(
                                        Icons.remove,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.black,
                      cardChild: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Weight (KG)",
                                  style: kLabelTextStyle,
                                ),
                                Text(
                                  "$weight",
                                  style: kNumberTextStyle,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    IconButton.filled(
                                      padding: EdgeInsets.zero,
                                      constraints: BoxConstraints.tight(
                                          const Size.square(24)),
                                      onPressed: () {
                                        setState(() {
                                          weight += 1;
                                        });
                                      },
                                      iconSize: 16,
                                      icon: const Icon(
                                        Icons.add,
                                      ),
                                    ),
                                    IconButton.filled(
                                      padding: EdgeInsets.zero,
                                      constraints: BoxConstraints.tight(
                                          const Size.square(24)),
                                      onPressed: () {
                                        setState(() {
                                          weight -= 1;
                                        });
                                      },
                                      iconSize: 16,
                                      icon: const Icon(
                                        Icons.remove,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.black,
                      cardChild: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Height (cm)",
                                  style: kLabelTextStyle,
                                ),
                                Text(
                                  "$height",
                                  style: kNumberTextStyle,
                                ),
                                Slider(
                                  value: height,
                                  onChanged: (value) {
                                    setState(() {
                                      height = value.ceilToDouble();
                                    });
                                  },
                                  min: 0,
                                  max: 250,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.black87,
                      cardChild: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Gender",
                                  style: kLabelTextStyle,
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text("Male"),
                                    Switch(
                                      // This bool value toggles the switch.
                                      value: selectedGender == Gender.male,
                                      activeColor: Colors.indigo,
                                      activeTrackColor: Colors.indigo.shade100,
                                      onChanged: (value) => {
                                        setState(() {
                                          selectedGender = value
                                              ? Gender.male
                                              : Gender.female;
                                        })
                                      },
                                    ),
                                    const Text("Female")
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.indigo)),
                onPressed: () {
                  // code
                },
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text("Calculate BMI"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
