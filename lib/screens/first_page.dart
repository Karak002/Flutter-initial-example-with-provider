import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider2/providers/counter_providers.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Initial Example With Provider ${context.watch<Counter>().count}'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                'You have pushed this: ${context.watch<Counter>().count.toString()}')
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('Increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () {
              context.read<Counter>().increment();
            },
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            key: const Key('decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () {
              context.read<Counter>().decrement();
            },
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            key: const Key('reset_floatingActionButton'),
            child: const Icon(Icons.exposure_zero),
            onPressed: () {
              context.read<Counter>().reset();
            },
          ),
        ],
      ),
    );
  }
}
