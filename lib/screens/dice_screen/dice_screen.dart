import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:learn_mobx/store/dice_screen_store.dart';
import 'package:provider/provider.dart';

class DiceScreen extends StatelessWidget {
  DiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text(
          'TAP THE DICE',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Hind'),
        ),
      ),
      body: SafeArea(
        child: DiceView(),
      ),
    );
  }
}

class DiceView extends StatelessWidget {
  const DiceView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final diceCounter = DiceScreenStore();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: diceCounter.roll,
                  child: Observer(builder: (_) {
                    return Image.asset(
                        'assets/images/dice${diceCounter.left}.png');
                  }),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: diceCounter.roll,
                  child: Observer(
                    builder: (_) {
                      return Image.asset(
                          'assets/images/dice${diceCounter.right}.png');
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            child: Observer(
              builder: (BuildContext context) => Text(
                  'Total: ${diceCounter.total}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
