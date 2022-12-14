import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_updated/shared/components/components.dart';
import 'package:todo_updated/shared/cubit/cubit.dart';
import 'package:todo_updated/shared/cubit/states.dart';

class ArchivedTasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AppCubit, AppStates>(
      listener: (BuildContext context, AppStates state){},
      builder: (BuildContext context, AppStates state)
      {
        var tasks = AppCubit.get(context).archivedTasks;
        return taskBuilder(tasks);
      },
    );
  }
}
