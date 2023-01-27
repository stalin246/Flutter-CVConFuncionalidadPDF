
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/models/invoice.dart';
import 'package:flutter_application_1/pages/detail.dart';

class InvoicePage extends StatelessWidget {
  InvoicePage({Key? key}) : super(key: key);

  final invoices = <Invoice>[
    Invoice(
        Estudiante: 'Luis Valencia',
        Direccion: 'La ferroviaria alta',
        imagen: 'assets/images.png',
        Carrera: 'Tecnologia en Desarrollo de Software',

        Descripcion: 'Estudio la carrera tecnológica en Desarrollo de Software de cuarto periodo en la Escuela Politécnica Nacional. Soy de las personas que les gusta aprender más de manera práctica, porque que de esta manera puedo emplearlo. Me gusta mucho la tecnología y sus avances en estos tiempos.',
        Educacion: 'Operador de computadoras, Desarrollo de Software',
        Idiomas: 'Ingles',
        Intereses: 'Jugar videojuegos, jugar futbol con mi sobrino,',
        Aptitudes: 'Autonomía y ser una persona resolutiva.',
        Ciudad: 'Quito',
        Correo: 'stalinvalencia24@gmail.com',
        Celular: '0980955439',
        Universidad: 'Escuela Politecnica Nacional'
       
    ),
      Invoice(
        Estudiante: 'Adrian Chicaiza',
        Direccion: 'Guamani',
        imagen: 'assets/images.png',
        Carrera: 'Desarrollo de Software',

        Descripcion: 'Soy una persona responsable y eficiente con afán de superación en busca de pasantías en áreas de Desarrollo de software. Actualmente soy un estudiante cursando los últimos semestres de la carrera de Desarrollo de Software en la EPN. Mi objetivo principal es desarrollarme profesionalmente y evolucionar mis aprendizajes, de modo que busco oportunidades que me permitan hacerlo. Tengo conocimientos en Bases de datos, Desarrollo de Páginas Web, Mantenimiento de Computadoras y Lenguajes de programación como C, C++ y Python.',
        Educacion: 'Técnico de Servicios Aplicaciones Informáticas, Desarrollo de Software',
        Idiomas: 'Ingles',
        Intereses: 'Deportes, dibujo, programacion',
        Aptitudes: 'Responsabilidad, eficancia, dedicación',
        Ciudad: 'Quito',
        Correo: 'adrianchicaiza3@gmail.com',
        Celular: '0992727309',
          Universidad: 'Escuela Politecnica Nacional'
     
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estudiantes Registrados'),
      ),
      body: ListView(
        children: [
          ...invoices.map(
            (e) => ListTile(
              title: Text(e.Estudiante),
              subtitle: Text(e.Carrera),

              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => DetailPage(invoice: e),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
