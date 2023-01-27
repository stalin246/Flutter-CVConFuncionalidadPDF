import 'dart:typed_data';

import 'package:flutter_application_1/models/invoice.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;

Future<Uint8List> makePdf(Invoice invoice) async {
  final pdf = Document();
  final imageLogo = MemoryImage((await rootBundle.load('assets/BUHO_EPN_big.png')).buffer.asUint8List());
  pdf.addPage(
    Page(
      build: (context) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(" ${invoice.Estudiante}"),
                    // Text(invoice.Direccion),
                    Text(invoice.Carrera),
                    // Text(invoice.imagen)
                    
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image(imageLogo),
                )
                
              ],
            ),
             Padding(
              child: Text(
                "Mi Descripción!",
                style: Theme.of(context).header2,
              ),
              padding: EdgeInsets.all(20),
            ),
            Text(invoice.Descripcion),
            
            Container(height: 50),
     Table(
              border: TableBorder.all(color: PdfColors.black),
              children: [
                // TableRow(
                //   children: [
                //     PaddedText('Descripción'),
                //     PaddedText(invoice.Descripcion)
                //   ],
                // ),
                TableRow(
                  children: [
                    PaddedText('Educación'),
                    PaddedText(invoice.Educacion)
                  ],
                ),
                TableRow(
                  children: [
                    PaddedText('Idioma'),
                    PaddedText(invoice.Idiomas)
                  ],
                ),
                TableRow(
                  children: [
                    PaddedText('Intereses'),
                    PaddedText(invoice.Intereses)
                  ],
                ),
                TableRow(
                  children: [
                    PaddedText('Aptitudes'),
                    PaddedText(invoice.Aptitudes)
                  ],
                ),
                TableRow(
                  children: [
                    PaddedText('Ciudad'),
                    PaddedText(invoice.Ciudad)
                  ],
                ),
                TableRow(
                  children: [
                    PaddedText('Dirección'),
                    PaddedText(invoice.Direccion)
                  ],
                ),
                TableRow(
                  children: [
                    PaddedText('Correo'),
                    PaddedText(invoice.Correo)
                  ],
                ),
                TableRow(
                  children: [
                    PaddedText('Celular'),
                    PaddedText(invoice.Celular)
                  ],
                ),
              
            
              ],
            ),
         
        
          ],
        );
      },
    ),
  );
  return pdf.save();
}

Widget PaddedText(
  final String text, {
  final TextAlign align = TextAlign.left,
}) =>
    Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: align,
      ),
    );
