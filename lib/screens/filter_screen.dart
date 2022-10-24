import 'package:flutter/material.dart';
import 'package:gaming_app/widgets/app_drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({
    Key? key,
    required this.currentFilters,
    required this.saveFilters,
  }) : super(key: key);

  static const screenRoute = '/filters';
  final Function saveFilters;
  final Map<String, bool> currentFilters;
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _pc = false;
  var _ps = false;
  var _xbox = false;
  var _switch = false;
  @override
  void initState() {
    _pc = widget.currentFilters['pc']!;
    _ps = widget.currentFilters['ps']!;
    _xbox = widget.currentFilters['xbox']!;
    _switch = widget.currentFilters['switch']!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
        actions: [
          IconButton(
            onPressed: () {
              final selectedFilters = {
                'pc': _pc,
                'ps': _ps,
                'xbox': _xbox,
                'switch': _switch,
              };
              widget.saveFilters(selectedFilters);
            },
            icon: const Icon(Icons.save),
          ),
        ],
        centerTitle: true,
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  'PC Games',
                  'Show Pc games Only',
                  _pc,
                  (newVslue) {
                    setState(
                      () {
                        _pc = newVslue;
                      },
                    );
                  },
                ),
                const SizedBox(height: 25),
                buildSwitchListTile(
                  'PS5 Games',
                  'Show PS5 games Only',
                  _ps,
                  (newVslue) {
                    setState(
                      () {
                        _ps = newVslue;
                      },
                    );
                  },
                ),
                const SizedBox(height: 25),
                buildSwitchListTile(
                  'Xbox Series X Games',
                  'Show Xbox Series X games Only',
                  _xbox,
                  (newVslue) {
                    setState(
                      () {
                        _xbox = newVslue;
                      },
                    );
                  },
                ),
                const SizedBox(height: 25),
                buildSwitchListTile(
                  'Switch Games',
                  'Show Switch Only',
                  _switch,
                  (newVslue) {
                    setState(
                      () {
                        _switch = newVslue;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSwitchListTile(String title, String subTitle, var currentValue,
      Function(bool) updateValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      value: currentValue,
      onChanged: updateValue,
    );
  }
}
