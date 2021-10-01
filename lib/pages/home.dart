import 'dart:ui';

import 'package:Expense/database/moor_database.dart';
import 'package:Expense/widgets/addExpense.dart';
import 'package:Expense/widgets/expense.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  void addExpense(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return AddExpenseWidget();
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      )),
      enableDrag: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: _buildDrawer(context),
        appBar: _buildAppBar(context),
        body: _buildBody(context),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Container(
      height: double.infinity,
      width: MediaQuery.of(context).size.width / 1.4,
      decoration: BoxDecoration(
        color: Color.fromRGBO(20, 20, 20, 1),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(71, 8, 154, 1),
      title: Text(
        'Expenses',
        style: TextStyle(fontSize: 17),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            icon: Icon(Icons.mode_edit), onPressed: () => addExpense(context))
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    final _expenseListProvider = Provider.of<AppDatabase>(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(10, 10, 10, 1),
      ),
      child: Column(
        children: [
          SizedBox(),
          Expanded(
            flex: 10,
            child: _buildListView(context),
          ),
        ],
      ),
    );
  }

  StreamBuilder<List<Expense>> _buildListView(context) {
    final _expenseListProvider = Provider.of<AppDatabase>(context);
    return StreamBuilder(
      stream: _expenseListProvider.watchAllExpense(),
      builder: (context, AsyncSnapshot<List<Expense>> snapshot) {
        final expenses = snapshot.data ?? List();

        return ListView.builder(
            itemCount: expenses.length,
            itemBuilder: (_, index) {
              return ExpenseWidget(
                expense: expenses[index],
                expenseListProvider: _expenseListProvider,
              );
            });
      },
    );
  }

  Widget _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        addExpense(context);
      },
      backgroundColor: Color.fromRGBO(71, 8, 154, 1),
      child: Center(
        child: Icon(Icons.add_box),
      ),
    );
  }
}
