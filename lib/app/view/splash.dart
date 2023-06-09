import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double marginPercentage =
        0.2; // Ajusta este valor para establecer el margen deseado

    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicativo'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Noticias',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text(
                '"Descubren una nueva especie de flores luminosas en el Amazonas"',
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                  'Investigadores botánicos han hecho un emocionante hallazgo en el corazón de la selva amazónica. Se trata de una especie de flores que emiten una suave luz, creando un espectáculo natural único. Este descubrimiento podría tener implicaciones tanto en la biología como en la iluminación sostenible.'),
              onTap: () {
                // Aquí puedes agregar la funcionalidad para la noticia 1
              },
            ),
            ListTile(
              title: Text(
                '"Joven emprendedor revoluciona la industria de la moda con ropa reciclada"',
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                  'Un talentoso emprendedor ha encontrado la forma de combinar moda y sostenibilidad al crear una línea de ropa exclusiva utilizando materiales reciclados. Su innovador enfoque ha captado la atención de la industria y está cambiando la forma en que vemos la moda, demostrando que es posible ser elegante y respetar el medio ambiente al mismo tiempo.'),
              onTap: () {
                // Aquí puedes agregar la funcionalidad para la noticia 1
              },
            ),
            ListTile(
              title: Text(
                '"Investigadores logran avance en la lucha contra el cáncer"',
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                  'Científicos y médicos han dado un paso significativo en la batalla contra el cáncer al descubrir un nuevo enfoque terapéutico. Mediante el uso de una combinación de terapias personalizadas y tecnología de vanguardia, han logrado mejorar las tasas de supervivencia y ofrecer nuevas esperanzas a los pacientes y sus familias.'),
              onTap: () {
                // Aquí puedes agregar la funcionalidad para la noticia 1
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade900, Colors.blue.shade400],
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 40),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/bienvenida1.jpeg',
                  width: 250,
                  height: 250,
                ),
                const SizedBox(height: 20),
                Text(
                  '¡Bienvenido!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: screenWidth * marginPercentage),
                  child: Text(
                    'En nuestro aplicativo, te damos la más cordial bienvenida a una experiencia única para simplificar tu vida. Nuestra misión es ayudarte a organizar tus tareas y aumentar tu productividad de manera eficiente. ¡Descubre todas las funcionalidades que tenemos para ofrecerte!',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/bienvenida2.jpg',
                  width: 250,
                  height: 250,
                ),
                const SizedBox(height: 20),
                Text(
                  'Descubre nuevas funcionalidades',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: screenWidth * marginPercentage),
                  child: Text(
                    'En constante evolución, nuestro aplicativo se adapta a tus necesidades y te sorprenderá con nuevas funcionalidades. Desde la integración con calendarios y recordatorios hasta la posibilidad de compartir tareas con otros usuarios, estamos comprometidos en brindarte la mejor experiencia. Nuestro equipo de desarrollo trabaja arduamente para ofrecerte actualizaciones periódicas, asegurándose de que siempre estés al tanto de las últimas herramientas y mejoras.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/bienvenida3.jpeg',
                  width: 250,
                  height: 250,
                ),
                const SizedBox(height: 20),
                Text(
                  'Aumenta tu productividad',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: screenWidth * marginPercentage),
                  child: Text(
                    'En un mundo lleno de distracciones, es fundamental contar con herramientas que te permitan maximizar tu productividad. Con nuestro aplicativo, podrás llevar un registro detallado de tus tareas, establecer recordatorios y marcar tus progresos a medida que avanzas hacia tus metas. No importa si se trata de un proyecto laboral, un estudio académico o simplemente las actividades diarias, nuestro aplicativo te brindará la estructura necesaria para mantener el enfoque y alcanzar tus objetivos de manera eficiente.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Nosotros',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Contáctanos',
          ),
        ],
      ),
    );
  }
}
