import 'package:flutter/material.dart';
import 'package:laboratorio02/app/view/newpage.dart';
import 'package:laboratorio02/app/view/task2.dart';
import 'package:laboratorio02/app/view/task_list/task_list_page.dart';

void main() => runApp(WelcomePage());

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const TaskListPage();
                      }),
                    );
                  },
                  child: const Text(
                    'TaskList',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const TaskListPage2();
                      }),
                    );
                  },
                  child: const Text(
                    'Otra página',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const InteractivePage();
                      }),
                    );
                  },
                  child: const Text(
                    'Interactive Page',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '¡Bienvenido!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Esta es una página de bienvenida',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Acción al presionar el botón
                  },
                  child: Text('Continuar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
