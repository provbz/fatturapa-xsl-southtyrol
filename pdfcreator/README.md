# README PDFCreator


PDFCreator transforms an XML file into a PDF by means of an XSL stylesheet and the iText library.

The input/output files can be specified using the System Properties. If not specified, the following defaults will be used:

| File Type | System Property | Default                                    |
|-----------|-----------------|--------------------------------------------|
| XML       | xmlinput        | file.xml                                   |
| XSL       | xslinput        | file.xsl                                   |
| PDF       | pdfoutput       | ${xmlinput without the .xml extension}.pdf |

## Build instructions:

mvn clean compile

## Usage examples:

- ```mvn exec:java```
(uses `file.xml` and `file.xsl` as inputs and `file.pdf` as pdf output)
- ```mvn exec:java -Dxslinput=fatturapa_v1.1.xsl -Dpdfoutput=fatturapa.pdf -Dxmlinput=fatturapa_v1.1.xml```
(uses `fatturapa_v1.1.xml` and `fatturapa_v1.1.xsl` as inputs and `fatturapa.pdf` as pdf output)
- ```mvn exec:java -Dxmlinput=fatturapa_v1.1.xml```
(uses `fatturapa_v1.1.xml` as xml input, `input.xsl` as input stylesheet and produces `fatturapa_v1.1.pdf as output`)

## Dependencies:

- Java Development Kit >= 1.7.0_51
- Flying Saucer Core Renderer >= 9.0.6 (e.g. flying-saucer-core-9.0.6.jar)
- Flying Saucer PDF Rendering >= 9.0.6 (e.g. flying-saucer-pdf-itext5-9.0.6.jar)
- IText, A Free Java PDF Library >= 5.5.3 (e.g. itextpdf-5.5.3.jar)
