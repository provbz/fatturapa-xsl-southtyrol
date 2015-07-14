/*
 * PDFCreator.java - Converts an XML file into a PDF using an XSL stylesheet and
 * the iText library
 *
 * This software is part of
 * ProxyFatturaPA - Gestione del formato Fattura Elettronica
 * http://www.gov4j.it/fatturapa
 *
 * Copyright (c) 2014-2015 Link.it srl (http://link.it).
 * Copyright (c) 2014-2015 Provincia Autonoma di Bolzano (http://www.provincia.bz.it/).
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
package pdfcreat;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.stream.StreamSource;

import org.xhtmlrenderer.pdf.ITextRenderer;

public class PDFCreator {

    public static void main(String[] args) throws Exception {

        String xmlInput = System.getProperty("xmlinput", "file.xml");
        String xslInput = System.getProperty("xslinput", "file.xsl");

        String pdfOutput = System.getProperty("pdfoutput", xmlInput.replace(".xml", "") + ".pdf");

        System.out.println("Eseguo la trasformazione del file [" + xmlInput + "] nel file [" + pdfOutput + "] tramite il file di trasformazione [" + xslInput + "]");

        TransformerFactory transformerFactory = TransformerFactory.newInstance();

        InputStream xmlfile = new FileInputStream(xmlInput);
        InputStream xsltfile = new FileInputStream(xslInput);
        OutputStream outputStream = new FileOutputStream(pdfOutput);
        System.out.println("Creazione del PDF in corso...");

        // Trasformazione 1 XML -> HTML tramite foglio stile XSL
        System.out.println("Creazione Transformer a partire dal file [" + xslInput + "]...");
        Transformer transformer = transformerFactory.newTransformer(new StreamSource(xsltfile));
        System.out.println("Creazione Transformer a partire dal file [" + xslInput + "] completata");

        System.out.println("Creazione Source XML da trasformare a partire dal file [" + xmlInput + "]...");
        Source src = new StreamSource(xmlfile);
        System.out.println("Creazione Source XML da trasformare a partire dal file [" + xmlInput + "] completata");

        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        org.w3c.dom.Document pdfDoc = factory.newDocumentBuilder().newDocument();
        Result res = new DOMResult(pdfDoc);

        System.out.println("Eseguo la trasformazione...");
        transformer.transform(src, res);
        System.out.println("Trasformazione completata.");

        // Trasformazione 2 HTML -> PDF
        System.out.println("Eseguo la scrittura del PDF...");
        System.out.println("Creazione Renderer in corso...");
        ITextRenderer renderer = new ITextRenderer();
        System.out.println("Creazione Renderer completata.");
        renderer.setDocument(pdfDoc, null);
        renderer.layout();

        System.out.println("Scrittura PDF in corso nel file [" + pdfOutput + "]...");
        renderer.createPDF(outputStream);
        System.out.println("Scrittura PDF in corso nel file [" + pdfOutput + "] completata.");

        System.out.println("Creazione del PDF completata con successo.");

    }

}
