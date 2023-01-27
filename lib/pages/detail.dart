import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/models/invoice.dart';
import 'package:flutter_application_1/pages/pdfexport/pdf/pdfexport.dart';
import 'package:flutter_application_1/pages/pdfexport/pdfpreview.dart';
import 'package:printing/printing.dart';

class DetailPage extends StatelessWidget {
  
  final Invoice invoice;
  const DetailPage({
    Key? key,
    required this.invoice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PdfPreviewPage(invoice: invoice),
            ),
          );
          // rootBundle.
        },
        child: Icon(Icons.picture_as_pdf),
      ),
      appBar: AppBar(
        title: Text('Detalles del Estudiante'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Estudiante',

                      style: Theme.of(context).textTheme.headline5,
                    ),
                    
                  ),
                  Expanded(
                    child: Text(
                      invoice.Estudiante,
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                  ),

                ],

              ),
            
            ),
            
            
          ),
           Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Carrera',

                      style: Theme.of(context).textTheme.headline5,
                    ),
                    
                  ),
                  Expanded(
                    child: Text(
                      invoice.Carrera,
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                  ),

                ],

              ),
            
            ),
            
            
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Universidad',

                      style: Theme.of(context).textTheme.headline5,
                    ),
                    
                  ),
                  Expanded(
                    child: Text(
                      invoice.Universidad,
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                  ),

                ],

              ),
            
            ),
            
            
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Correo',

                      style: Theme.of(context).textTheme.headline5,
                    ),
                   
                    
                  ),
                  Expanded(
                    child: Text(
                      invoice.Correo,
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                  ),

                ],

              ),
            
            ),
            
            
          ),
       
        ],
      ),
    );
  }
}
