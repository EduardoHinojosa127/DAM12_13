import 'package:flutter/material.dart';
import 'package:laboratorio02/app/view/task_list.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Lista de tareas'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const TaskListPage();
                }));
              },
              child: const Text(
                'La mejor forma para que no se te olvide nada es anotarlo. Guardar tus anotaciones.',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
